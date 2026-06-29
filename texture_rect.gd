extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += Vector2(3,2)/5
	if position[0] > -700: position -= Vector2(3,2)*1440
	match Global.page:
		0:
			modulate += (Color(1.0, 0.749, 0.271)-modulate)/20
		1:
			modulate += (Color(0.894, 0.239, 1.0)-modulate)/20
		2:
			modulate += (Color(1.0, 0.0, 0.533)-modulate)/20
		3:
			modulate += (Color(0.451, 0.0, 0.769)-modulate)/20
	pass
