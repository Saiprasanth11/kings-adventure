extends Node2D

var mobilecontrols: Node2D

func _ready() -> void:
	mobilecontrols = $"."
	mobilecontrols.visible = OS.get_name() == "Android" or OS.get_name() == "iOS"
