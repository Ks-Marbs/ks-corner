extends RichTextLabel
var speed := 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
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
	OS.shell_open(str(meta))
	pass # Replace with function body.
