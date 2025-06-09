extends Label


var fps_timer: Timer
var current_fps: float = 0.0 

func _ready() -> void:
	
	fps_timer = Timer.new()
	add_child(fps_timer)
	fps_timer.wait_time = 1.0  
	fps_timer.one_shot = false  
	fps_timer.connect("timeout", Callable(self, "_on_fps_timer_timeout"))
	fps_timer.start()


func _on_fps_timer_timeout() -> void:
	current_fps = Engine.get_frames_per_second()  
	text = "FPS: " + str(round(current_fps))  
