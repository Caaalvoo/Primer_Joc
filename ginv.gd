extends Area2D
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ginv_body_entered(body):
	var p = get_node("/root/Joc/Personatge")
	if body.is_in_group("jugador"):
		p.z = true
func _on_ginv_body_exited(body):
	var p = get_node("/root/Joc/Personatge")
	if body.is_in_group("jugador"):
		p.z = false
