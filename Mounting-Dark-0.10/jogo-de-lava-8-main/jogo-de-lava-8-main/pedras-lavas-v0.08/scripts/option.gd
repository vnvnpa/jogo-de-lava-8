extends Control


func _ready() -> void:
	easy.grab_focus()
@onready var easy: Button = $MarginContainer/HBoxContainer/VBoxContainer/easy



func _process(_delta: float) -> void:
	
	Input.warp_mouse(Vector2(500,900))
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/jogo.tscn")

func _on_credits_pressed() -> void:
	pass # Replace with function body.


func _on_quitgame_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/titlescreen.tscn")
