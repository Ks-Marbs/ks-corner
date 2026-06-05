extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	scale = Vector2(get_window().size-Vector2i(80,80)) / Vector2(1072,568)
	position = Vector2(40,20) * scale + Vector2(0,60)
	pass
