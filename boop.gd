extends ColorRect
var mouse_on := true

func _on_mouse_exited():
	$t.modulate = Color(1.0, 1.0, 1.0, 1.0)
	mouse_on = false

func _on_mouse_entered():
	if not (OS.has_feature("web_android") or OS.has_feature("web_ios")):
		$t.modulate = Color(0.22, 0.22, 0.22, 1.0)
	mouse_on = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$t.scale = Vector2(Global.wa[0] * 3,Global.wa[0] * 3)
	$t.position = Vector2(-4.0/Global.wa[0],0)
	pass
