extends OptionButton

onready var tween_cube = get_tree().get_root().get_node('World/TweenCube')

func _ready() -> void:
	tween_cube.duration = 3
	
func _on_SpeedOptionButton_item_selected(index):
	match index:
		0: tween_cube.duration = 7
		1: tween_cube.duration = 5
		2: tween_cube.duration = 3
		3: tween_cube.duration = 1
		4: tween_cube.duration = 0.25
