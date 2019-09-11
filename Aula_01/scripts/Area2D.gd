extends Area2D

signal lava_touched

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		emit_signal("lava_touched")