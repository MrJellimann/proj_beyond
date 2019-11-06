surface_set_target(light_surf);
    // Initial
    if (instance_exists(GameManager.sun))
        draw_clear_alpha(c_black, 1 - GameManager.sun._intensity);
    else
        draw_clear_alpha(c_black, 1);
    
    draw_set_blend_mode_ext(bm_src_alpha, bm_one);

    // Light Objects
    with (Light)
    {
        var flicker = random(5);
        draw_sprite_ext(_light_sprite, _light_index, x - view_xview, y - view_yview,
                        _size + (flicker / 100),
                        _size + (flicker / 100),
                        _direction, _color, _intensity);
    }
    
    /*
    with (DirectionalLight)
    {
        var flicker = random(0.1);
        draw_sprite_ext(sprDirectionalLight, 0, x - view_xview, y - view_yview,
                        _size,// + (flicker / 100),
                        _size,// + (flicker / 100),
                        _direction, _color, _intensity * (1 - flicker));
    }
    */

    // Character Light
    if (character_light)
    {
        if (instance_exists(GameManager.player))
        {
            draw_sprite_ext(sprCircleLight, 0,
                        GameManager.player.x - view_xview,
                        GameManager.player.y - 16 - view_yview,
                        0.35, 0.35, 0, c_white, 0.25);
        }
    }
    
    // Wrap-up
    draw_set_blend_mode(bm_normal);
surface_reset_target();
