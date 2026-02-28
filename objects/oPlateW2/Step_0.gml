if(bool (onPlayer2))
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
	xSpeed2 = 5 * oPlayer2.facing2
	directi2 = oPlayer2.facing2
}

if(!onPlayer2)
{
	xSpeed2 = 6 * directi2
	move_and_collide(xSpeed2,ySpeed2,oWall || oGround1)
}

var on_ground = place_meeting(x+1, y, oWall) || place_meeting(x-1, y, oWall)

if(!onPlayer2 && on_ground)
{
	instance_destroy()
}