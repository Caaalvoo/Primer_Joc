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


func _on_bg_body_entered(body):
	var g = get_node("/root/Joc/Personatge")
	g.gravetat  = Vector2.DOWN * 0
	g.salt = Vector2.UP * 0
	g.velocitat = 150
	g.moviment = Vector2.DOWN * 200



func _on_bg_body_exited(body):
	var g = get_node("/root/Joc/Personatge")
	g.gravetat  = Vector2.DOWN * 2000
	g.salt = Vector2.UP * 1200
	g.velocitat = 500
	g.moviment = Vector2.ZERO
