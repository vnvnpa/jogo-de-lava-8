extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	easy.grab_focus()
@onready var easy: Button = $MarginContainer/HBoxContainer/VBoxContainer/easy


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/jogo.tscn")

func _on_credits_pressed() -> void:
	pass # Replace with function body.


func _on_quitgame_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/titlescreen.tscn")
