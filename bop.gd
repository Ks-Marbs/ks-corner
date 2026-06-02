extends NinePatchRect

func _on_mouse_exited():
	texture = load("res://images/Arow button hollow.png")

func _on_mouse_entered():
	texture = load("res://images/Arow button.png")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_series_mouse_entered() -> void:
	pass # Replace with function body.
