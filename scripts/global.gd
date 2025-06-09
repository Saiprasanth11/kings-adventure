extends Node

var total_score = 0
var total_time = 0 


func _process(delta: float) -> void:
	Global.total_time += delta 
