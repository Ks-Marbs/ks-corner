extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += Vector2(8,3)/10
	if position[0] > -100: position -= Vector2(9,0)*2304
	if position[1] > -100: position -= Vector2(0,9)*2304
	match Global.page:
		0:
			modulate += (Color(0.97, 0.695, 0.0, 1.0)-modulate)/50
		1:
			modulate += (Color(0.887, 0.15, 1.0, 1.0)-modulate)/50
		2:
			modulate += (Color(1.0, 0.0, 0.533)-modulate)/50
		3:
			modulate += (Color(0.333, 0.0, 0.57, 1.0)-modulate)/50
		4:
			modulate += (Color(0.887, 0.15, 1.0, 1.0)-modulate)/50
		5:
			modulate += (Color(0.887, 0.15, 1.0, 1.0)-modulate)/50
		6:
			modulate += (Color(0.887, 0.15, 1.0, 1.0)-modulate)/50

	pass
