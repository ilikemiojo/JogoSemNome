extends Area2D

signal spikes_touched

func _on_Spikes_body_entered(body):
	if body.is_in_group("player"):
		emit_signal("spikes_touched")