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
	My name is Ks! Well, my internet name is Ks
I'm currently 17, was born and live in Brazil, and am fluent in both Portuguese and English.
I always wanted to show people some of my interests and projects and kewl stuff that may come, so I made this website, without knowing a single bit of HTML.
If you like any of the following: M4th, Programming, Colors, Linguistics, Boops;
This is a place for you! If you don't, you are still welcome!


TL;DR:
[left]Name: Ks
Age: 17
Nationality: Brazilian  [img=width=36emxheight=36em]res://images/Brazil.png[/img]
Interests: Math, Coding, Rhythm!
Favourite animal: Dogz
Current favourite song: [url=https://www.youtube.com/watch?v=GaqDu16Rfe4&list=RDGaqDu16Rfe4]Mirror[/url]
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
