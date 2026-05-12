extends Control



func _ready() -> void:
	start.grab_focus()
	Input.warp_mouse(Vector2(300, 400)) # posição que quiser
@onready var start: Button = $MarginContainer/HBoxContainer/VBoxContainer/start



func _process(_delta: float) -> void:
	
	Input.warp_mouse(Vector2(500,900))
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/option.tscn")

func _on_credits_pressed() -> void:
	pass # Replace with function body.


func _on_quitgame_pressed() -> void:
	get_tree().quit()
