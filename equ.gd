extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$RichTextLabel.text = "="
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _pressed() -> void:
	var K = Expression.new()
	var error = K.parse(Global.calc_m1)
	if error != OK:
		print(K.get_error_text())
		Global.calc_m1 = "ERROR!!!!"
		return
	var result = K.execute()
	if not K.has_execute_failed():
		Global.calc_m1 = str(result)
