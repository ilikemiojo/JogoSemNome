extends Control

export(String) var newGame = null

func _on_Try_Again_pressed():
	get_tree().change_scene(newGame)
	PlayerInfo.lives = 3
	PlayerInfo.points = 0
	Main.lives = 3
	Main.points = 0

func _on_Quit_pressed():
	get_tree().quit()