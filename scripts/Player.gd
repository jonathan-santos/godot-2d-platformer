extends KinematicBody2D

var vel = Vector2()
var speed = 12000

func _process(delta):
	vel = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		vel.x += speed
	elif Input.is_action_pressed("ui_left"):
		vel.x -= speed
		
	move_and_slide(vel * delta, Vector2.UP)
