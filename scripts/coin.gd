extends Area2D



func _on_coin_body_entered(body):
	if body.name == "player":
		PlayerStats.coins += 1
