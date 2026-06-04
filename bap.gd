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
	size = Vector2((get_window().size[0]+120)/4+28,60)
	$RichTextLabel.position = Vector2(size[0]/4,(get_window().size[0]-1152)/(-60))
	$RichTextLabel.scale = Vector2((get_window().size[0]+120.0)/288.0,(get_window().size[0]+120.0)/288.0)
	if mouse_on and Input.is_action_just_pressed("click"):
		Global.woosh = !Global.woosh
	pass
