extends Button

onready var tween_cube = get_tree().get_root().get_node('World/TweenCube')

func _on_RunTweenButton_pressed():
	tween_cube.run_tween()
