extends Node2D


func _input(event):
	if event.is_action_pressed("Map"):  # Checkt of de actie "Map" wordt ingedrukt
		get_tree().change_scene_to_file("res://scenes/game.tscn")
	elif event.is_action_pressed("clicked"):
		$"Container/Glaswald text".visible = false
		$"Container/Bad-nogwatText".visible = false
		$Container/Stausee_tekst.visible = false
		$Container/BadMinNogwattesText.visible = false
	elif event.is_action_pressed("escape"):
		get_tree().quit()

func _on_back_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_glaswald_pressed() -> void:
	$"Container/Glaswald text".visible = true 

func _on_glaswald_mouse_entered() -> void:
	$"Container/Glaswald highL".visible = true

func _on_glaswald_mouse_exited() -> void:
	$"Container/Glaswald highL".visible = false

func _on_badnog_pressed():
	$"Container/Bad-nogwatText".visible = true

func _on_badnog_mouse_entered():
	$Container/BadNogwattessHighlight.visible = true

func _on_badnog_mouse_exited():
	$Container/BadNogwattessHighlight.visible = false

func _on_straus_pressed():
	$Container/Stausee_tekst.visible = true

func _on_straus_mouse_entered():
	$Container/StauseeHighL.visible = true

func _on_straus_mouse_exited():
	$Container/StauseeHighL.visible = false

func _on_bad_min_nog_pressed():
	$Container/BadMinNogwattesText.visible = true

func _on_bad_min_nog_mouse_entered():
	$Container/BadMinNogwattesHighL.visible = true

func _on_bad_min_nog_mouse_exited():
	$Container/BadMinNogwattesHighL.visible = false

func _on_knie_pressed():
	pass

func _on_knie_mouse_entered():
	$Container/KniebisHighlight.visible = true

func _on_knie_mouse_exited():
	$Container/KniebisHighlight.visible = false
