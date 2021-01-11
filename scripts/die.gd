extends Area2D




func _on_die_body_entered(body):
	if body.name == "player":
		queue_free()
		PlayerStats.health -= 1
