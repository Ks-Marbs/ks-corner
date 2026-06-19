extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !(OS.has_feature("web_android") or OS.has_feature("web_iOS")):
		text = Global.text[Global.page]
		size = Vector2(1143.0,591.0) * Global.wa - Vector2(60,0)
		position = Vector2(30,60)
	else:
		text = Global.text[Global.page]
		size = Vector2(1143.0,591.0) * Global.wa/4 - Vector2(60,0)
		position = Vector2(30,240)
		scale = Vector2.ONE * 4
	pass


func _on_meta_clicked(meta: Variant) -> void:
	OS.shell_open(str(meta))
	pass # Replace with function body.
