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


func _on_rampa_body_entered(body):
	var p = get_node("/root/Joc/Personatge")
	p.gravetat = Vector2.DOWN * 8000
	p.salt = Vector2.UP * 0
	p.velocitat = 0



func _on_rampa_body_exited(body):
	var p = get_node("/root/Joc/Personatge")
	p.gravetat = Vector2.DOWN * 2000
	p.salt = Vector2.UP * 1200
	p.velocitat = 500
