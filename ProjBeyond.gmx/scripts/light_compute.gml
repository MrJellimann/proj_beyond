surface_set_target(light_surf);
    // Initial
    draw_clear_alpha(c_black, 1);
    draw_set_blend_mode_ext(bm_src_alpha, bm_one);

    // Light Objects
    with (CircleLight)
    {
        var flicker = random(5);
        draw_sprite_ext(sprCircleLight, 0, x - view_xview, y - view_yview,
                        _size + (flicker / 100),
                        _size + (flicker / 100),
                        0, _color, _intensity);
    }
    
    with (DirectionalLight)
    {
        var flicker = random(0.1);
        draw_sprite_ext(sprDirectionalLight, 0, x - view_xview, y - view_yview,
                        _size,// + (flicker / 100),
                        _size,// + (flicker / 100),
                        _direction, _color, _intensity * (1 - flicker));
    }

    // Character Light
    if (character_light)
    {
        if (instance_exists(GameManager.player))
        {
            draw_sprite_ext(sprCircleLight, 0,
                        GameManager.player.x - view_xview,
                        GameManager.player.y - view_yview,
                        0.5, 0.5, 0, c_white, 0.5);
        }
    }
    
    // Wrap-up
    draw_set_blend_mode(bm_normal);
surface_reset_target();
