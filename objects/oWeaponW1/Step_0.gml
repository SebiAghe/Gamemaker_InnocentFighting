


if(bool (onPlayer))
{
	x = oPlayer1.x;
	y = oPlayer1.y;
}




if (keyboard_check(ord("S")) && onPlayer)
{
	onPlayer=0
	xSpeed = 6 * oPlayer1.facing
	ySpeed -= grav * 3
}

var on_ground = place_meeting(x, y + 1, oGround1)

if(!onPlayer)
{
	grav -= 0.2
	if(ySpeed<max_fall)
	{
		ySpeed -= grav
	}
	
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
		for (var i=0; i<10; i++)
		{
			
		}
		instance_destroy()
	}
}