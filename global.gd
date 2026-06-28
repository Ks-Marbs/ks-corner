extends Node
var woosh := false
var wa:= Vector2.ONE
var text:=[["[i] Hey! [/i] 

[b] Welcome to Ks' Corner[/b] 


This is my site/portifolio 

It's mostly a small collection of my projects and some of my interests! 

Don't except anything too serious, all in here is made for fun!
[wave amp=50.0 freq=4.0 connected=0][color=gold]~(^w^)~[/color][/wave]

Made in Godot [img=width=36emxheight=36em]res://icon.svg[/img]


About me:
This is test N12
My name is Ks! Well, my internet name is Ks

I'm currently 17, was born and live in Brazil, and am fluent in both Portuguese and English.

I always wanted to show people some of my interests and projects and kewl stuff that may come, so I made this website, without knowing a single bit of HTML.

If you like any of the following: M4th, Programming, Colors, Linguistics, Boops;

This is a place for you! If you don't, you are still welcome!

[rainbow freq=0.2 speed=1.3]48657861646563696D616C20697320636F6F6C[/rainbow]


TL;DR:
[left][ul]Name: Ks
Age: 17
Nationality: Brazilian  [img=width=36emxheight=36em]res://images/Brazil.png[/img]
Interests: Math, Coding, Rhythm!
Favourite animal: Dogz
Current favourite song: [url=https://www.youtube.com/watch?v=GaqDu16Rfe4&list=RDGaqDu16Rfe4]Mirror[/url]
[/ul][/left]
",
"[i]Games[/i]

[b]These are some of my games! 
(might be demos)[/b]

[table=3,center,center]
[cell]
[b]Room Sokoban[/b]
This was my first Godot game!
It's a simple Sokoban game
with some extra mechanics.
Play here: [wave amp=20.0 freq=4.0 connected=0][color=0055AA][url=https://ks-marbs.github.io/room_sokoban/]Click me![/url][/color][/wave]
[/cell]
[cell]  [/cell]
[cell]
[img=top,left,width=256emxheight=256em]res://images/rs.png[/img]
[/cell]
[cell]
[img=top,left,width=256emxheight=256em]res://images/URG.png[/img]
[/cell]
[cell]  [/cell]
[cell]
[b]Unnamed Rhythm Game[/b]
Not so simple Rhythm game, 
also made in Godot!
Currently in progress
Demos here: [wave amp=20.0 freq=4.0 connected=0][color=0055AA][url=https://github.com/Ks-Marbs/rhythm-game]Click me![/url][/color][/wave]
[/cell]
[table=3,center,center]
[cell]
[b]Lavender\'s Home[/b]
Collab with Seni foxy!
It comes with lore, ooooh~
Updates whenever people unlock updates
Demos here: [wave amp=20.0 freq=4.0 connected=0][color=0055AA][url=https://github.com/Ks-Marbs/lavender-s-home]Click me![/url][/color][/wave]
[/cell]
[cell]  [/cell]
[cell]
[img=top,left,width=256emxheight=256em]res://images/rs.png[/img]
[/cell]
[/table]

",
"[i]Series[/i]

[b]At the very start, I used to make series! 
(some may be rebooted, who knows?)[/b]


[table=1,center,center]
[cell]
[b]The amazing marble race[/b]
First ever series 
(and only one i actually completed, oof)
It's a marble race, thats it
Watch here:
S1:[wave amp=20.0 freq=4.0 connected=0][color=0055AA][url=https://youtube.com/playlist?list=PLaefg6KsKPQGoE0bUZSxaixYdwf9EODfy&si=748m1PlnaDNFTdms]Click me![/url][/color][/wave]
S2:[wave amp=20.0 freq=4.0 connected=0][color=0055AA][url=https://youtube.com/playlist?list=PLaefg6KsKPQFg1SVBTMDz8UmbGJG1K9mQ&si=UgjmT1LA0O3cNLue]Click me![/url][/color][/wave]
[/cell]

[cell]
[img=top,left,width=360emxheight=204em]res://images/AMR1.jpg[/img]  [img=top,left,width=360emxheight=204em]res://images/AMR2.jpg[/img]
[/cell]
[cell]  [/cell]
[cell]  [/cell]
[cell]
[b]100 Lives Marble Race[/b]
Made like...4 years ago?
Never completed it...
Maybe I should one day
Watch here:[wave amp=20.0 freq=4.0 connected=0][color=0055AA][url=https://youtube.com/playlist?list=PLaefg6KsKPQG3O65eZUNbvwSEtgMsXxIB&si=1LjwjWk6yLWzObyV]Click me![/url][/color][/wave]
[/cell]

[cell]
[img=top,left,width=360emxheight=204em]res://images/LMR.jpg[/img]
[/cell]
[cell]  [/cell]
[cell]  [/cell]
[cell]
[b]Algicosathlon[/b]
To be rebooted
Its way too old T-T
Watch? here:[wave amp=20.0 freq=4.0 connected=0][color=0055AA][url=https://youtube.com/playlist?list=PLaefg6KsKPQEZb6F5BPx3JUm7hd2vqbRj&si=P4TwMIcXRnNb7afV]Click me![/url][/color][/wave]
[/cell]
[cell]
[img=top,left,width=360emxheight=204em]res://images/A.jpg[/img]
[/cell]
[cell]  [/cell]
[cell]  [/cell]

[/table]
",
"Math
coming soon"]
]
var page := 0
var lang := 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	wa = Vector2(get_window().size[0]/1152.0,get_window().size[1]/648.0)
	pass
