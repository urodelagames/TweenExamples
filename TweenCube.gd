extends MeshInstance

export(
	int, 
	"TRANS_LINEAR", 
	"TRANS_SINE", 
	"TRANS_QUINT",
	"TRANS_QUART",
	"TRANS_QUAD",
	"TRANS_EXPO",
	"TRANS_ELASTIC",
	"TRANS_CUBIC",
	"TRANS_CIRC",
	"TRANS_BOUNCE",
	"TRANS_BACK"
) var transition_type

export(
	int, 
	"EASE_IN", 
	"EASE_OUT", 
	"EASE_IN_OUT",
	"EASE_OUT_IN"
) var easing_type

export(
	String,
	"scale",
	"translation",
	"rotation"
) var function_type = "scale"

export(
	String,
	"x",
	"y",
	"z"
) var xyz = "x"

export var initial_value: float = 0.0
export var final_value: float = 1.0
export var duration: float = 3.0

func run_tween() -> void:
	var tween = Tween.new()
	
	if function_type == 'rotation':
		tween.interpolate_property(
			self,
			function_type + ":" + xyz,
			deg2rad(initial_value*360.0),
			deg2rad(final_value*360.0),
			duration,
			transition_type,
			easing_type
		)
	else:
		tween.interpolate_property(
			self,
			function_type + ":" + xyz,
			initial_value,
			final_value,
			duration,
			transition_type,
			easing_type
		)
		
	tween.connect("tween_all_completed", tween, "queue_free")
	add_child(tween)
	tween.start()

func _ready():
	pass
	
#func _input(event):
#	if event.is_action_pressed("ui_accept"):
#		runTween()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
