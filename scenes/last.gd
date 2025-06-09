extends Node2D

var total_score: Label
var total_time: Label

const LEVEL_1_SCENE = "res://scenes/level_1.tscn"

func _ready() -> void:
	total_score = $Total_score
	total_time = $Total_time
	
	total_score.text = "Total Score: " + str(Global.total_score)
	total_time.text = "Total Time: " + str(ceil(Global.total_time)) + "s"

func change_scene():
	get_tree().change_scene_to_file(LEVEL_1_SCENE)

func reset_score():
	Global.total_score = 0
	Global.total_time = 0


func _on_button_button_up() -> void:
	reset_score()
	call_deferred("change_scene")
