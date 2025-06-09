extends Node2D

func _on_touch_screen_button_released() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")
