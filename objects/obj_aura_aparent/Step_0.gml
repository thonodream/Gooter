var sineWave = 0 + (1+sin(2*pi*current_time/1000 * 0.30)) * 0.8

var t_id = layer_get_id("Walls_t");

var t_ts_id = layer_tilemap_get_id(t_id);


var t_pix_id = tilemap_get_at_pixel(t_ts_id,x,y);


if (t_pix_id == 0)
{
    instance_destroy();
}