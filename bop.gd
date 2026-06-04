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
	match str(self.name)[0]:
		"0":
			size = Vector2((get_window().size[0]+120)/4+28,60)
		"1":
			size = Vector2((get_window().size[0]+120)/4,60)
			position = Vector2((get_window().size[0]+120)/4-28,0)
		"2":
			size = Vector2((get_window().size[0]+120)/4,60)
			position = Vector2((get_window().size[0]+120)/2-56,0)
		"3":
			size = Vector2((get_window().size[0]+120)/4,60)
			position = Vector2((get_window().size[0]+120)/4*3-84,0)
	$RichTextLabel.position = Vector2(size[0]/4,5000/(get_window().size[0]^2))
	$RichTextLabel.scale = Vector2((get_window().size[0]+120.0)/288.0,(get_window().size[0]+120.0)/288.0)
	pass
