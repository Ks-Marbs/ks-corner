extends NinePatchRect
var on := false
var mouse_on := false

func _on_mouse_exited():
	$RichTextLabel.modulate = Color(1.0, 1.0, 1.0, 1.0)
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
	$RichTextLabel.scale = Vector2(Global.wa[0] * 4,Global.wa[0] * 4)
	$RichTextLabel.position = Vector2(48*Global.wa[0],12.5/Global.wa[0]-12.5)
	if !(OS.has_feature("web_android") or OS.has_feature("web_ios")):
		size = Vector2(290.0*Global.wa[0],60.0)
		for i in range(1,get_child_count()):
			var j = get_child(i)
			if mouse_on:
				j.position += (Vector2(0,60*(i-1)*Global.wa[0]+60)-j.position)/15.0
				j.self_modulate = self_modulate
				j.get_node("t").self_modulate = Color(1,1,1,1)
			else: 
				j.position += (Vector2(0,0)-j.position)/15.0
			j.size = (size-Vector2(28,0))*Vector2(1.0,Global.wa[0])
		match str(self.name)[0]:
			"1":
				if Global.woosh:
						position += (Vector2(320,0)*Global.wa - Vector2(28,0)- position)/15.0
				else:
					if position > Vector2(-400,0):
						position += (Vector2(-400,0) - position)/15.0
			"2":
				if Global.woosh:
					position += (Vector2(610,0)*Global.wa - Vector2(56,0)- position)/15.0
				else:
					if position > Vector2(-400,0):
						position += (Vector2(-400,0) - position)/15.0
			"3":
				if Global.woosh:
					position += (Vector2(900,0)*Global.wa - Vector2(84,0)- position)/15.0
				else:
					if position > Vector2(-400,0):
						position += (Vector2(-400,0) - position)/15.0

	else:
		scale = Vector2.ONE * 8
		size = Vector2(get_window().size[0]-int(str(self.name)[0])*60,60)
		if Global.woosh:
			position += (Vector2(0,int(str(self.name)[0]))*480 - position)/15.0
			if Input.is_action_just_pressed("click") and mouse_on:
				Global.page = int(str(self.name)[0])
		else:
			position += (Vector2(0,-800) - position)/15.0
		$RichTextLabel.scale = Vector2(4,4)
		$RichTextLabel.position = Vector2(size[0]/2-90,0)
	if !Global.woosh: on = false
	pass
