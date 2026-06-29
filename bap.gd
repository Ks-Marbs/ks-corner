extends NinePatchRect
var mouse_on := false
var clicks := 0
func _on_mouse_entered() -> void:
	Global.woosh = true
	mouse_on = true
	clicks += 1
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
	if !(OS.has_feature("web_android") or OS.has_feature("web_ios")):
		$RichTextLabel.scale = Vector2(Global.wa[0] * 4,Global.wa[0] * 4)
		$RichTextLabel.position = Vector2(48*Global.wa[0],12.5/Global.wa[0]-12.5)
		size = Vector2(320*Global.wa[0],60)
	else:
		scale = Vector2.ONE * 4
		size = Vector2(get_window().size[0]/4-36,60)
		$RichTextLabel.scale = Vector2(4,4)
		$RichTextLabel.position = Vector2(size[0]/2-90,0)
	if mouse_on and Input.is_action_just_pressed("click"):
		if clicks == 0:
			Global.page = 0
			Global.woosh = false
			clicks = 0
		clicks=0
	pass
