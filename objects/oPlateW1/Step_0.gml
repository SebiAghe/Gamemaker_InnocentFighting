if(bool (onPlayer))
{
	x = oPlayer1.x;
	y = oPlayer1.y;
}

if (keyboard_check(ord("S")) && onPlayer)
{
	onPlayer=0
	xSpeed = 6 * oPlayer1.facing
	directi = oPlayer1.facing
}

if(!onPlayer)
{
	xSpeed = 6 * directi
	move_and_collide(xSpeed,ySpeed,oWall || oGround1)
}

var on_ground = place_meeting(x+1, y, oWall) || place_meeting(x-1, y, oWall)

if(!onPlayer && on_ground)
{
	instance_destroy()
}