extends KinematicBody2D

var vel = Vector2()
var speed = 12000

func _process(delta):
	vel = Vector2()
	
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
		
	move_and_slide(vel * delta, Vector2.UP)
