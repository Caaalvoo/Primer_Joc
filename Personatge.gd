extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat := 500
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 2000
var salt := Vector2.UP * 1200
var z := false
var cronos := 0
var cronot := 0
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(2000,1990)
	add_to_group("jugador")
#	var character = get_node("KinematicBody2D")
#	var tween = character.tween("modulate", Color(1, 0, 0), Color(0, 1, 0), 2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
#	tween.repeat()
#	tween.start()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if z == false:
		moviment += gravetat * delta
		moviment.x = Input.get_axis("ves_esquerra","ves_dreta") * velocitat
		if Input.is_action_just_pressed("ves_a_dalt") and is_on_floor():
			moviment += salt
		moviment = move_and_slide(moviment, Vector2.UP)
	else:
		moviment -= gravetat * delta
		moviment.x = Input.get_axis("ves_esquerra","ves_dreta") * velocitat
		if Input.is_action_just_pressed("ves_a_dalt") and is_on_floor():
			moviment -= salt
		moviment = move_and_slide(moviment, Vector2.DOWN)


