extends Control

export(String) var newGame = null

func _on_Play_pressed():
	get_tree().change_scene(newGame)

func _on_Quit_pressed():
	get_tree().quit()