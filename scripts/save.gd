extends Area2D

signal save


func _on_save_body_entered(body):
	if body.name == "player":
		emit_signal("save")
		
