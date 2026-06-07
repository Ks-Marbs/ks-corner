extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	scale = Vector2(get_window().size) / Vector2(1152,648)
	position = Vector2(40,80) * scale
	$a.text = str(get_v_scroll_bar().value)
	$Sprite2D.position = Vector2(295.0,307-get_v_scroll_bar().value)
	pass
