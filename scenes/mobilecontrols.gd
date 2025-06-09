extends Node2D

var mobileControls: Node2D

func _ready() -> void:
	mobileControls = get_node(".") 
	mobileControls.visible = is_mobile_device()

func is_mobile_device() -> bool:
	var os_name = OS.get_name()

	# Native mobile platforms
	if os_name == "Android" or os_name == "iOS":
		return true

	# For HTML5 (GitHub Pages, browsers)
	if os_name == "HTML5":
		if Engine.has_singleton("JavaScript"):
			var js = Engine.get_singleton("JavaScript")
			# Detect common mobile user agents
			var result = js.eval("""
				(function() {
					return /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i
						.test(navigator.userAgent);
				})()
			""", true)
			return result == true

	return false
