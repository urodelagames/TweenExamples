extends OptionButton

onready var tween_cube = get_tree().get_root().get_node('World/TweenCube')

func _ready():
	tween_cube.function_type = "translation"

func _on_FunctionTypeOptionButton_item_selected(index):
	match index:
		0: tween_cube.function_type = "translation"
		1: tween_cube.function_type = "rotation"
		2: tween_cube.function_type = "scale"
