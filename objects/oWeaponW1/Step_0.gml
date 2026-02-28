if(onPlayer>0)
{
	if(oPlayer1.facing == 1)
		x = oPlayer1.x + 10 * oPlayer1.facing;
	else
		x = oPlayer1.x + 25 * oPlayer1.facing;
	y = oPlayer1.y-5;
}




if (keyboard_check(ord("S")) && onPlayer)
{
	onPlayer=0
	oPlayer1.has_item = 0
	xSpeed = 6 * oPlayer1.facing
	ySpeed -= grav * 3
}

var on_ground = place_meeting(x, y + 1, oGround1) || place_meeting(x+1, y, oGround1) || place_meeting(x-1, y, oGround1)

if(!onPlayer)
{
	grav -= 0.2
	if(ySpeed<max_fall)
	{
		ySpeed -= grav
	}
	
	if(!on_ground)
		move_and_collide(xSpeed,ySpeed,oGround1)
		
	if(!on_ground)
	{
		detonate = 100
	}
}

if(on_ground && !onPlayer)
{
	ySpeed=0
	xSpeed=0
	detonate--
	if(detonate == 0)
	{
		instance_destroy()
	}
}