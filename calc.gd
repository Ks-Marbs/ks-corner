extends ColorRect
var on := false
var mouse_on := false
var a := Vector2(0,0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = get_window().size / 4
	pass # Replace with function body.

func bop():
	if get_local_mouse_position().x > 0 and get_local_mouse_position().y > 0\
	and get_local_mouse_position().x < size.x and get_local_mouse_position().y < size.y:
		return true
	return false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	visible = Global.calc
	if bop() and Input.is_action_just_pressed("click"):
		a = position - get_global_mouse_position()
	if bop() and Input.is_action_pressed("click"):
		position = get_global_mouse_position() + a
	pass
