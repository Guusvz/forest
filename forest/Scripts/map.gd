extends Node2D


func _input(event):
	if event.is_action_pressed("Map"):  # Checkt of de actie "Map" wordt ingedrukt
		get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_glaswald_pressed() -> void:
	$"Glaswald text".visible = true 


func _on_glaswald_mouse_entered() -> void:
	$"Orginele_kaart".visible = false

			#$"Orginele_kaart".visible = true
#func _on_glaswald_mouse_exited() -> void:
	#$"Orginele_kaart".visible = true 
