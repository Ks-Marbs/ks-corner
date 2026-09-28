extends RichTextLabel
var speed := 1
var k:= 0.0
var bo = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	if Global.bo:
		if get_v_scroll_bar().value > 4: get_v_scroll_bar().value -= get_v_scroll_bar().value/4
		else: get_v_scroll_bar().value = 0; Global.bo = false
	if k > -0.2:
		$"1boop".modulate = Color(1,1,1,k)
		k += (-0.2-k)/10
	text = Global.text[Global.lang][Global.page]

	if !(OS.has_feature("web_android") or OS.has_feature("web_ios")):
		size = Vector2(1143.0,591.0) * Global.wa - Vector2(10,0)
		position = Vector2(10,60)
	else:
		size = Vector2(1143.0,591.0) * Global.wa/2 - Vector2(10,0)
		position = Vector2(30,240)
		scale = Vector2.ONE * 2
	pass


func _on_meta_clicked(meta: Variant) -> void:
	if str(meta)[0] == "1":
		match str(meta)[1]:
			"a":
				$"1boop".position = get_local_mouse_position()-Vector2(120,120)
				k = 0.8
			"b":
				$audio.stream = load("res://images/pt"+str(randi_range(1,4))+".mp3")
				$audio.play()
			"c":
				Global.page = int(str(meta)[2]+str(meta)[3])
	else :OS.shell_open(str(meta))
	pass # Replace with function body.
