extends Node2D

var mobilecontrols: Node2D

func _ready() -> void:
	mobilecontrols = $"."
	var os_name = OS.get_name()

	# Show controls for Android or HTML5 (mobile browser)
	if os_name == "Android" or os_name == "HTML5":
		mobilecontrols.visible = true
	else:
		mobilecontrols.visible = false
