extends Node2D


func _input(event):
	if event.is_action_pressed("Map"):  # Checkt of de actie "Map" wordt ingedrukt
		get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_glaswald_pressed() -> void:
	$"Glaswald text".visible = true 

func _on_glaswald_mouse_entered() -> void:
	$"Glaswald highL".visible = true

func _on_glaswald_mouse_exited() -> void:
	$"Glaswald highL".visible = false

func _on_badnog_pressed():
	pass

func _on_badnog_mouse_entered():
	$BadNogwattessHighlight.visible = true

func _on_badnog_mouse_exited():
	$BadNogwattessHighlight.visible = false
