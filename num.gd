extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$RichTextLabel.text = str(self.name)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _pressed() -> void:
	Global.calc_m1 += str(self.name)
