extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _pressed() -> void:
	Global.calc = !Global.calc
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (OS.has_feature("web_android") or OS.has_feature("web_ios")):
		scale = Vector2.ONE* 3
	position = Vector2(30,get_window().size.y - 30-size.y*scale.y)
	pass
