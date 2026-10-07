extends Node2D
var a = Vector2.ZERO
var b = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
func bop():
	if get_local_mouse_position().x > -18 and get_local_mouse_position().y > -18\
	and get_local_mouse_position().x < 18 and get_local_mouse_position().y < 18:
		return true
	return false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	visible = Global.lav
	if not Global.lav:
		position = get_global_mouse_position()
	if bop() and Input.is_action_just_pressed("click"):
		a = position - get_global_mouse_position()
	if bop() and Input.is_action_pressed("click"):
		position = get_global_mouse_position() + a
	pass
