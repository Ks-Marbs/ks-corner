extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if str(self.name) == "dot":
		$RichTextLabel.text = "."
	elif str(self.name) == "div":
		$RichTextLabel.text = "/"
	elif str(self.name) == "*":
		$RichTextLabel.text = "x"
	elif str(self.name) == "per":
		$RichTextLabel.text = "%"
	else:
		$RichTextLabel.text = str(self.name)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _pressed() -> void:
	if str(self.name) == "dot":
		Global.calc_m1 += "."
	elif str(self.name) == "div":
		Global.calc_m1 += "/"
	elif str(self.name) == "per":
		Global.calc_m1 += "%"
	elif str(self.name) == "C":
		Global.calc_m1 = ""
	else:
		Global.calc_m1 += str(self.name)
