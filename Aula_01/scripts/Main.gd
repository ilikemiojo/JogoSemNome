extends Node2D

var points = 0 setget set_points
var lives = 3 setget set_lives

func set_points(value):
	points = value
	get_node("/root/Main/HUD/Points").set_text("PONTOS: " + str(points))

func set_lives(value):
	lives = value
	get_node("/root/Main/HUD/Lives").set_text("VIDAS: " + str(lives))