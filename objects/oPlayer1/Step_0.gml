
x_speed = 0
y_speed += 0.1

var on_ground = place_meeting(x, y + 1, oGround1) || place_meeting(x-1, y, oWall) || place_meeting(x+1, y, oWall)


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

if(cupcake_instance != noone && !has_item)
{
	has_item = 1
	with(cupcake_instance) instance_destroy()
	instance_create_layer(x + 4, y + 16, "Instances", oWeaponW1);
	spawn_timer = 200
}

var plate_instance = instance_place(x, y, oPlate)

if(plate_instance != noone && !has_item)
{
	has_item = 1
	with(plate_instance) instance_destroy()
	instance_create_layer(x + 4, y + 16, "Instances", oPlateW1);
	spawn_timer_p = 200
}

if (spawn_timer > 0)
{
    spawn_timer--;

    if (spawn_timer == 0)
    {
        instance_create_layer(304, 255, "Instances", oWeapon);
    }
}

if (spawn_timer_p > 0)
{
    spawn_timer_p--;

    if (spawn_timer_p == 0)
    {
        instance_create_layer(160, 255, "Instances", oPlate);
    }
}

var dmg_instance = instance_place(x, y, oPlateW2)

if (dmg_instance != noone)
{
    hp -= 25;

    with (dmg_instance)
    {
        instance_destroy();
    }
}

var dmg_instance_c = instance_place(x, y, oWeaponW2)

if (dmg_instance_c != noone)
{
    hp -= 25;

    with (dmg_instance_c)
    {
        instance_destroy();
    }
}


if(hp == 0)
	instance_destroy()
