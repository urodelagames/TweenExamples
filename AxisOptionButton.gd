extends OptionButton

onready var tween_cube = get_tree().get_root().get_node('World/TweenCube')

func _ready() -> void:
	tween_cube.xyz = 'y'

func _on_AxisOptionButton_item_selected(index):
	match index:
		0: tween_cube.xyz = 'x'
		1: tween_cube.xyz = 'y'
		2: tween_cube.xyz = 'z'
