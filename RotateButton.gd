extends Button

func _on_RotateButton_pressed():
	var animation_player: AnimationPlayer = get_tree().get_root().get_node('World/AnimationPlayer')
	if animation_player.is_playing():
		animation_player.stop(false)
	else:
		animation_player.play("Rotate")
