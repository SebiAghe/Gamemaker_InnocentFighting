
x_speed = 0
y_speed = +0.3



if (keyboard_check(ord("D"))) { // if the d key is pressed 
    x_speed = movement_speed //add the movement speed to the x_speed variable 
} 
if (keyboard_check(ord("A")))
{
    x_speed = -movement_speed
}

if place_meeting(x, y+1, oGround1)
{
        y_speed = 0
		time_jump = 1000
        while ( keyboard_check(ord("W")) and (time_jump != 0))
        {
                y_speed = -4
				time_jump -= 1
        }
}

move_and_collide(x_speed, y_speed, oGround1)
