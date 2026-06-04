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
		"1":
			size = Vector2((get_window().size[0]+120)/4,60)
			if Global.woosh:
				if position < Vector2((get_window().size[0]+120)/4-29,0) or position > Vector2((get_window().size[0]+120)/4-27,0):
					position += (Vector2((get_window().size[0]+120)/4-28,0) - position)/20.0
			else:
				if position > Vector2(-400,0):
					position += (Vector2(-400,0) - position)/20.0
		"2":
			size = Vector2((get_window().size[0]+120)/4,60)
			if Global.woosh:
				if position < Vector2((get_window().size[0]+120)/2-57,0) or position > Vector2((get_window().size[0]+120)/2-55,0):
					position += (Vector2((get_window().size[0]+120)/2-56,0) - position)/20.0
			else:
				if position > Vector2(-400,0):
					position += (Vector2(-400,0) - position)/20.0
		"3":
			size = Vector2((get_window().size[0]+120)/4,60)
			if Global.woosh:
				if position < Vector2((get_window().size[0]+120)/4*3-85,0) or position > Vector2((get_window().size[0]+120)/4*3-83,0):
					position += (Vector2((get_window().size[0]+120)/4*3-84,0)- position)/20.0
			else:
				if position > Vector2(-400,0):
					position += (Vector2(-400,0) - position)/20.0
	$RichTextLabel.position = Vector2(size[0]/4,(get_window().size[0]-1152)/(-60))
	$RichTextLabel.scale = Vector2((get_window().size[0]+120.0)/288.0,(get_window().size[0]+120.0)/288.0)
	pass
