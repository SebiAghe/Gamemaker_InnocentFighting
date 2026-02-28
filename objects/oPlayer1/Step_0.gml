
x_speed = 0
y_speed += 0.1

var on_ground = place_meeting(x, y + 1, oGround1)


if(y_speed>max_fall)
{
	y_speed=max_fall
}

image_xscale = facing

if (keyboard_check(ord("D"))) { // if the d key is pressed 
	facing = 1
	x_speed = movement_speed //add the movement speed to the x_speed variable 
} 
if (keyboard_check(ord("A")))
{
	facing = -1
    x_speed = -movement_speed
}

if (on_ground)
{
	y_speed=0
	if keyboard_check_pressed(ord("W"))
	{
		y_speed -= jump_power
		jump_hold_time = max_jump_hold
	}
}

if (keyboard_check(ord("W")) && jump_hold_time > 0)
{
    y_speed -= jump_power
    jump_hold_time--
}
else
{
    jump_hold_time = 0
}

move_and_collide(x_speed, y_speed, oGround1)

var cupcake_instance = instance_place(x, y, oWeapon)

if(cupcake_instance != noone)
{
	with(cupcake_instance) instance_destroy()
	instance_create_layer(x + 4, y + 16, "Instances", oWeaponW1);
}