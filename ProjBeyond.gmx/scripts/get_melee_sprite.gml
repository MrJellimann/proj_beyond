/// get_melee_sprite(type);

var type;

switch (argument0)
{
    case MeleeType.SWORD: type = sprCut; break;
    case MeleeType.RAPIER: type = sprThrust; break;
    case MeleeType.SPEAR: type = sprLargeThrust; break;
    case MeleeType.GREATSWORD: type = sprWideCut; break;
    case MeleeType.HAMMER: type = sprStrike; break;
}

return type;
