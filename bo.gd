extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	modulate.a = (position.y+36)/36.0
	position.y -= 1
	if position.y < -36:
		position.x = randi_range(-7,7)
		position.y = 3
	pass
