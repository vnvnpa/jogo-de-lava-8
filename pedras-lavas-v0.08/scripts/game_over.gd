extends CanvasLayer

##@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false

func _on_heroi_game_over() -> void:
	visible = true
	$death.play()
	get_tree().paused = true
	re_zero.grab_focus()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
@onready var re_zero: Button = $menuGameover/re_zero


func _on_re_zero_pressed():
	$audiobydeath.play()
	await get_tree().create_timer($audiobydeath.stream.get_length()).timeout
	get_tree().paused = false
	get_tree().reload_current_scene()
	
	visible = false 
func _on_re_zero_2_pressed() -> void:
	get_tree().quit()


func _on_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/titlescreen.tscn")
	
