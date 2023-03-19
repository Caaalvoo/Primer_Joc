extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var tf := false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var t = get_node("/root/Joc/cantonades/Cantonada")
	if t.tocats == 4:
		visible = true
		
func _on_Cantonada3_body_exited(body):
	var t = get_node("/root/Joc/cantonades/Cantonada")
	if body.is_in_group("jugador") and tf == false:
		t.tocats += 1
		tf = true
	visible = false
