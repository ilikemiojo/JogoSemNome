extends Node

var lives = 3
var points = 0

var defeat = "res://scenes/Defeat.tscn"

func _process(delta):
	if (lives <= 0):
		game_over()
		
func game_over():
	get_tree().change_scene(defeat)
	lives = 3
	Main.lives = 3