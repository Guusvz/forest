extends Node2D

func _input(event):
	if event.is_action_pressed("Map"):  # Checkt of de actie "Map" wordt ingedrukt
		get_tree().change_scene_to_file("res://scenes/map.tscn")


func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://scenes/badnogwattes.tscn")
