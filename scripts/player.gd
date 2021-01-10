extends KinematicBody2D

#constants
var velocity = Vector2()
export var speed = 10
var gravity = 100
var floor_ = Vector2(0, -1)
var jump = 200




func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	else:
		velocity.x = 0
	#gravity and jump
	if Input.is_action_pressed("ui_up"):
		velocity.y = -jump
	else:
		velocity.y = gravity
	move_and_slide(velocity)
	

func _ready():
	pass 
