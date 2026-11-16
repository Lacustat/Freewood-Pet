-- Freewood: Namen der Tastenbelegungen (Optionen > Tastaturbelegung). Die Belegungen selbst stehen in Bindings.xml.
local de = (GetLocale and GetLocale() == "deDE")
BINDING_CATEGORY_FREEWOOD = "Freewood"   -- eigener Bereich in Optionen > Tastaturbelegung (statt "AddOns")

BINDING_HEADER_FREEWOOD_PET = de and "Freewood Begleiter" or "Freewood Pet"
BINDING_NAME_FREEWOOD_PET_TAB = de and "Begleiter auf/zu" or "Toggle Pet"
