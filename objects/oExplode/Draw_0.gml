draw_sprite_ext(sExplode,0,x,y,scale,scale,0,c_white,alpha)
scale = scale + 0.1;
alpha = alpha - 0.05;

scale = clamp(scale,0,1);

if ( alpha <= 0 )
{
	instance_destroy(id);
}