extends Node

var health = 1
var die : bool
var coins = 0
var scene : String
var save_position : Vector2

var data = {
	"save_position" : save_position,
	"scene" : scene,
	"coins" : coins
}

func save():
	var file = File.new()
	var user_dir = "user://saves.save"
	file.open(user_dir,File.WRITE)
	file.store_var(data)
	data.save_position = save_position 
	data.coins = coins 
	data.scene = scene
	print(data)
	file.close()

func loadd():
	var file = File.new()
	var user_dir = "user://saves.save"
	file.open(user_dir,File.READ)
	var data_load = file.get_var()
	save_position = data_load.save_position
	coins = data_load.coins
	scene = data_load.scene
	print(data)
	file.close()
