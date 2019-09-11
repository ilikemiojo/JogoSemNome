extends Node2D

var coinsCollected = 0

func _on_Coin_coin_collected():
	PlayerInfo.points += 10
	Main.points += 10
	coinsCollected += 1
	print(PlayerInfo.points)

func _on_Area2D_lava_touched():
	PlayerInfo.lives -= 1
	Main.lives -= 1
	PlayerInfo.points -= coinsCollected * 10
	Main.points -= coinsCollected * 10
	coinsCollected = 0
	get_tree().change_scene("res://scenes/Level_01.tscn")
	print(PlayerInfo.lives)