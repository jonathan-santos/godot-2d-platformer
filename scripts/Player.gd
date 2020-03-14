extends KinematicBody2D

var vel = Vector2()
var speed = 12000
var jumpPower = 100000
var gravity = 20000

func _process(delta):
	vel = Vector2()
	
	vel.y += gravity
	
	if(is_on_floor() and Input.is_action_pressed("jump")):
		vel.y -= jumpPower
	
	if Input.is_action_pressed("move_right"):
		vel.x += speed
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("move_left"):
		vel.x -= speed
		$AnimatedSprite.flip_h = true
	
	if(vel.x != 0):
		$AnimatedSprite.play("move")
	else:
		$AnimatedSprite.play("idle")	
		
	vel = move_and_slide(vel * delta, Vector2.UP)
