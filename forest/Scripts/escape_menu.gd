extends Control

var is_paused = false

#func _input(event):
	#if event.is_action_pressed("Map"): 
		#toggle_pause()

#func toggle_pause():
	#is_paused = !is_paused
	#get_tree().paused = is_paused  # Zet de game op pauze

func _on_quit_pressed() -> void:
	get_tree().quit()
