extends NinePatchRect
var mouse_on := false

func _on_mouse_entered() -> void:
	mouse_on = true
	pass # Replace with function body.


func _on_mouse_exited() -> void:
	mouse_on = false
	pass # Replace with function body.
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position = Vector2.ZERO
	if get_window().size[0] > get_window().size[1]:
		$RichTextLabel.scale = Vector2(Global.wa[0] * 4,Global.wa[0] * 4)
		$RichTextLabel.position = Vector2(48*Global.wa[0],12.5/Global.wa[0]-12.5)
		size = Vector2(320*Global.wa[0],60)
	else:
		size = Vector2(get_window().size[0]-18,60)
		$RichTextLabel.scale = Vector2(4,4)
		$RichTextLabel.position = Vector2(size[0]/2-90,0)
	if mouse_on and Input.is_action_just_pressed("click"):
		Global.woosh = !Global.woosh
	pass
