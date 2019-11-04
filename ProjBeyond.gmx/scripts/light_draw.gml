shader_set(shd_multiply);
shader_set_uniform_f(uniform_ambient, ambient_light);
texture_set_stage(sampler_light, surface_get_texture(light_surf));

//draw_set_alpha(0.95);
    //draw_surface(light_surf, 0, 0);
//draw_set_alpha(1);
draw_surface(application_surface, 0, 0);

shader_reset();

//application_surface_draw_enable(true);
