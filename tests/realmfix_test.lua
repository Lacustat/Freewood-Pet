-- Test 0.3.5: Begleiter ohne Realm im Schluessel uebernehmen   texlua tests/realmfix_test.lua
-- Laedt Pet.lua mit Attrappen; mit Pfad als Argument zusaetzlich mit einer echten SavedVariables-Datei.
local function Proxy() return setmetatable({}, { __index = function() return function() return Proxy() end end, __call = function() return Proxy() end }) end
local fixers = {}
local FW = setmetatable({ L = setmetatable({}, { __index = function(_, k) return k end }), modules = {}, Export = { RegisterHandler = function() end },
    Util = { NormalizedRealm = function() return "CAMWOWEU5Realm8PvP" end, OnRealmFix = function(n, fn) fixers[n] = fn end } },
    { __index = function() return function() return Proxy() end end })
function FW:RequireAPI() return true end
function FW:NewModule() return { db = { pets = {} } } end
_G.Freewood = FW
_G.UnitName = function() return "Pinky" end
_G.GetAddOnMetadata = function() return "test" end
setmetatable(_G, { __index = function(_, k) if type(k) == "string" and k:match("^%u") and not k:match("^C_") and not k:match("^[A-Z_]+$") then return function() return nil end end end })
assert(loadfile("Pet.lua"))("Freewood-Pet", {})
assert(fixers.Begleiter, "angemeldet")
local pets
if arg[1] then
    dofile(arg[1])
    FW.db = FreewoodDB
    pets = FreewoodDB.modules.Pet.pets
else
    pets = {
        ["Pinky-CAMWOWEU5Realm8PvP:Alice"] = { name = "Alice", level = 34, updated = 100, firstSeen = 10, owner = "Pinky-CAMWOWEU5Realm8PvP" },
        ["Pinky-:Alice"] = { name = "Alice", level = 35, updated = 200, firstSeen = 150, owner = "Pinky-" },
        ["Pinky-:Bello"] = { name = "Bello", level = 5, updated = 50, owner = "Pinky-" },
        ["Aroki-:Wolf"] = { name = "Wolf", level = 9, updated = 1, owner = "Aroki-" },
    }
    FW.db = { modules = { Pet = { pets = pets } } }
end
local moved = fixers.Begleiter()
local a = pets["Pinky-CAMWOWEU5Realm8PvP:Alice"]
print("verschoben", moved, "Alice Stufe", a.level, "owner", a.owner, "firstSeen", a.firstSeen, "leer weg", pets["Pinky-:Alice"] == nil)
if not arg[1] then
    assert(moved == 2 and a.level == 35 and a.firstSeen == 10 and a.owner == "Pinky-CAMWOWEU5Realm8PvP", "neuere Daten, frueheres Sehen")
    assert(pets["Pinky-CAMWOWEU5Realm8PvP:Bello"] and pets["Aroki-:Wolf"], "anderer Charakter bleibt")
    print("realmfix_test: ok")
end
