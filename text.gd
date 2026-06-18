extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = Global.text[Global.page]
	size = Vector2(1143.0,591.0) * Global.wa - Vector2(60,0)
	position = Vector2(30,60)
	pass


func _on_meta_clicked(meta: Variant) -> void:
	OS.shell_open(str(meta))
	pass # Replace with function body.
