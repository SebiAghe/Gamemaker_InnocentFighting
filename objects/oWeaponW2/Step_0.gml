if(onPlayer2>0)
{
	if(oPlayer2.facing2 == 1)
		x = oPlayer2.x + 10 * oPlayer2.facing2;
	else
		x = oPlayer2.x + 25 * oPlayer2.facing2;
	y = oPlayer2.y-5;
}




if (keyboard_check(vk_down) && onPlayer2)
{
	onPlayer2=0
	oPlayer2.has_item = 0
	xSpeed2 = 6 * oPlayer2.facing2
	ySpeed2 -= grav2 * 3
}

var on_ground = place_meeting(x, y + 1, oGround1) || place_meeting(x+1, y, oGround1) || place_meeting(x-1, y, oGround1)

if(!onPlayer2)
{
	grav2 -= 0.2
	if(ySpeed2<max_fall2)
	{
		ySpeed2 -= grav2
	}
	
	if(!on_ground)
		move_and_collide(xSpeed2,ySpeed2,oGround1)
		
	if(!on_ground)
	{
		detonate2 = 100
	}
}

if(on_ground && !onPlayer2)
{
	ySpeed2=0
	xSpeed2=0
	detonate2--
	if(detonate2 == 0)
	{
		instance_destroy()
	}
}