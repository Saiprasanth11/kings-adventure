extends Area2D
@onready var level: Label = $"../Label/CanvasLayer/Level"

# Variable to store the next level's path
var next_level = '' 
@onready var score: Label = $"../Label/CanvasLayer/Score"
@onready var game_manager: Node = %GameManager

func change_scene() -> void:
	if level.text == "Level - 1":
		next_level = "res://scenes/level_2.tscn"
	if level.text == "Level - 2":
		next_level = "res://scenes/level_3.tscn"
	if level.text == "Final Level":
		next_level = "res://scenes/last.tscn"
	Global.total_score += game_manager.score
	print(Global.total_score)
	get_tree().change_scene_to_file(next_level)


func _on_body_entered(_body: Node2D) -> void:
		call_deferred("change_scene")
