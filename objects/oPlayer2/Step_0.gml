
x_speed2 = 0
y_speed2 += 0.1

var on_ground = place_meeting(x, y + 1, oGround1) || place_meeting(x-1, y, oWall) || place_meeting(x+1, y, oWall)


if(y_speed2>max_fall2)
{
	y_speed2=max_fall2
}

image_xscale = facing2

if (keyboard_check(vk_right)) { // if the d key is pressed 
	facing2 = 1
	x_speed2 = movement_speed2 //add the movement speed to the x_speed variable 
} 
if (keyboard_check(vk_left))
{
	facing2 = -1
    x_speed2 = -movement_speed2
}

if (on_ground)
{
	y_speed2=0
	if keyboard_check_pressed(vk_up)
	{
		y_speed2 -= jump_power2
		jump_hold_time2 = max_jump_hold2
	}
}

if (keyboard_check(vk_up) && jump_hold_time2 > 0)
{
    y_speed2 -= jump_power2
    jump_hold_time2--
}
else
{
    jump_hold_time2 = 0
}

move_and_collide(x_speed2, y_speed2, oGround1)

var cupcake_instance = instance_place(x, y, oWeapon)

if(cupcake_instance != noone)
{
	with(cupcake_instance) instance_destroy()
	instance_create_layer(x + 4, y + 16, "Instances", oWeaponW1);
}

var plate_instance = instance_place(x, y, oPlate)

if(plate_instance != noone)
{
	with(plate_instance) instance_destroy()
	instance_create_layer(x + 4, y + 16, "Instances", oPlateW1);
}