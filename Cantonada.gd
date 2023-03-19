extends Area2D

var tocats := 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var tf := false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var p = get_node("/root/Joc/Personatge")
	if tocats == 4:
		p.position = Vector2(2000,1990)
		visible = true
		tocats = 0



func _on_Cantonada_body_exited(body):
	if body.is_in_group("jugador") and tf == false:
		tocats += 1
		tf = true
	visible = false



