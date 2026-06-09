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
	scale = Vector2(get_window().size) / Vector2(1152,648)
	position = Vector2(-28,0)*scale
	if mouse_on and Input.is_action_just_pressed("click"):
		Global.woosh = !Global.woosh
	pass
