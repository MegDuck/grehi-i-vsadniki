extends Node2D

func _ready():
	if PlayerStats.die == true:
		$player.position = PlayerStats.data.save_position
		PlayerStats.die = false

func _process(delta):
	$player/Label.text = str(PlayerStats.coins)


func _on_save_save():
		PlayerStats.save_position = $player.position
		PlayerStats.scene = filename
		PlayerStats.save()
