/// get_melee_hitbox(type);
var type;

switch (argument0)
{
    case MeleeType.SWORD: type = hitbox_Cut; break;
    case MeleeType.RAPIER: type = hitbox_Thrust; break;
    case MeleeType.SPEAR: type = hitbox_LargeThrust; break;
    case MeleeType.GREATSWORD: type = hitbox_WideCut; break;
    case MeleeType.HAMMER: type = hitbox_Strike; break;
}

return type;
