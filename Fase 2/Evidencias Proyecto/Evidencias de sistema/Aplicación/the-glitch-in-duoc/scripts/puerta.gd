extends Area2D
@onready var puerta: AnimatedSprite2D = $".."
@export var change_scene_path : String

	
func _on_area_entered(_player):
	print("entro al area")
	puerta.play("puerta_abierta")

func _on_area_exited(_player):
	print("salio del area")
	puerta.play("puerta_cerrada") 
	


func _on_body_entered(body):
	if body.name == "player":
		change_scene()
func change_scene():
	get_tree().change_scene_to_file("res://escenas/creditos.tscn")
