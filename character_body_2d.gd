extends CharacterBody2D
var c = false
var t1 = 0.0
var t2 = 1.0
var d = false
var o = 0.0
var p = -1
var l := 0
var q:= 0.0
var f:= 6
var v:= 0.0
var r:=false
var a = Vector2.ZERO
var b = 1
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		if velocity.x > 20: velocity.x -= 20
		elif velocity.x < -20: velocity.x += 20
		else: velocity.x = 0


	visible = Global.lav
	if not Global.lav:
		velocity = Vector2.ZERO
		position = get_global_mouse_position()

	$boop.visible = false
	if bop() and is_on_floor():
		v=0
		if Input.is_action_just_pressed("click"):
			a = position - get_global_mouse_position()
			d = true
			q=0
		elif Input.get_last_mouse_screen_velocity() and not Input.is_action_pressed("click"):
			q+=delta
			if q>2:
				$boop.visible = true
			if q>6: q=0
	else: q = 0
	v+=delta
	if v>f: v=0; p = randi_range(0,1)*2-1; f = randi_range(6,10); l = randi_range(1,3); 
	if v > f-5 and v < f-l and is_on_floor():
		velocity.x = p*100
		t2 = ((p+1)/2)+2.5
	else:
		t2 = 1

	if d and Input.is_action_pressed("click"):
		position = get_global_mouse_position() + a
		velocity = Vector2.ZERO
		c = true
	elif c:
		velocity =  Input.get_last_mouse_screen_velocity()/2
		c = false
	if not Input.is_action_pressed("click"):
		d = false
	o = velocity.x
	move_and_slide()
	if is_on_wall():
		velocity.x=o*-0.4
		p = -p


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if (OS.has_feature("web_android") or OS.has_feature("web_ios")):
		scale = Vector2.ONE * 3
	pass # Replace with function body.
	
func bop():
	if get_local_mouse_position().x > -18 and get_local_mouse_position().y > -18\
	and get_local_mouse_position().x < 18 and get_local_mouse_position().y < 18:
		return true
	return false

func _process(delta: float) -> void:
	t1 += delta*4
	if t1 > 4.0 : t1-=4.0
	$Sprite2D.region_rect = Rect2(floor(t2*2)*36,floor(t1)*36,36,36)
# Called every frame. 'delta' is the elapsed time since the previous frame.
