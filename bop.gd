extends NinePatchRect
var on := false
var mouse_on := false

func _on_mouse_exited():
	$RichTextLabel.modulate = Color(0.22, 0.22, 0.22, 1.0)
	if not on:
		for i in range(1,get_child_count()):
			var j = get_child(i)
			j.self_modulate = Color(0,0,0,0)
			j.get_node("t").self_modulate = Color(1,1,1,0)
	mouse_on = false

func _on_mouse_entered():
	$RichTextLabel.modulate = Color(0.22, 0.22, 0.22, 1.0)
	mouse_on = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	scale = Vector2(get_window().size) / Vector2(1152.0,648.0)
	if mouse_on and Input.is_action_just_pressed("click"): on = !on
	for i in range(1,get_child_count()):
		var j = get_child(i)
		if on:
			j.position += (Vector2(0,60*i)-j.position)/20.0
			j.self_modulate = self_modulate
			j.get_node("t").self_modulate = Color(1,1,1,1)
		else: 
			j.position += (Vector2(0,0)-j.position)/20.0
		j.size = size-Vector2(28,0)

	match str(self.name)[0]:
		"1":
			if Global.woosh:
				if position < Vector2(292,0)*scale or position > Vector2(290,0)*scale:
					position += (Vector2(292,0)*scale - position)/20.0
			else:
				if position > Vector2(-200,0)*scale:
					position += (Vector2(-200,0)*scale - position)/20.0
		"2":
			if Global.woosh:
				if position < Vector2(554,0)*scale or position > Vector2(552,0)*scale:
					position += (Vector2(554,0)*scale - position)/20.0
			else:
				if position > Vector2(-200,0)*scale:
					position += (Vector2(-200,0)*scale - position)/20.0
		"3":
			if Global.woosh:
				if position < Vector2(816,0)*scale or position > Vector2(814,0)*scale:
					position += (Vector2(816,0)*scale - position)/20.0
			else:
				if position > Vector2(-200,0)*scale:
					position += (Vector2(-200,0)*scale - position)/20.0
	if !Global.woosh: on = false
	pass
