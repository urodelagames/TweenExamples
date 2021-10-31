extends OptionButton


onready var tween_cube = get_tree().get_root().get_node('World/TweenCube')

func _ready() -> void:
	tween_cube.easing_type = 0
	
func _on_EasingTypeOptionButton_item_selected(index):
	tween_cube.easing_type = index
