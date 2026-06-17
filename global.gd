extends Node
var woosh := false
var wa:= Vector2.ONE
var text:=["[i] Hey! [/i] 
[b] Welcome to Ks' Corner[/b] 
This is my site/portifolio 
It's mostly a small collection of my projects and some of my interests! 
Don't except anything too serious, all in here is made for fun!
[color=gold]^w^[/color]

Made in Godot [img=width=36emxheight=36em]res://icon.svg[/img]

About me:
[left]Name: Ks
Age: 17
Nationality: Brazilian  [img=width=36emxheight=36em]res://images/Brazil.png[/img]

[/left]
",
"Games",
"Series",
"Math"]
var page := 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	wa = Vector2(get_window().size[0]/1152.0,get_window().size[1]/648.0)
	pass
