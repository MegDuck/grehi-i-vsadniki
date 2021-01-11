extends KinematicBody2D


var velocity = Vector2()
export var speed = 10
var gravity = 100
export var jump = 50
var friction = 0.1
var acceleration = 0.25

func get_input():
	var dir = 0
	if Input.is_action_pressed("ui_right"):
		dir += 1
		$Sprite.flip_h = true
	if Input.is_action_pressed("ui_left"):
		dir -= 1
		$Sprite.flip_h = false
	if dir != 0:
		velocity.x = lerp(velocity.x, dir*speed, acceleration)
	else:
		velocity.x = lerp(velocity.x, 0, friction)

func _physics_process(delta):
	check_on_die()
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity,Vector2.UP)
	
	if Input.is_action_pressed("ui_up"):
		if is_on_floor():
				velocity.y = -jump

func die():
	PlayerStats.loadd()
	get_tree().change_scene(PlayerStats.data.scene)
	PlayerStats.health = 1
	

func check_on_die():
	if PlayerStats.health == 0:
		PlayerStats.die = true
		die()
