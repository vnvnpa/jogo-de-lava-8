extends Node2D


const PLATE_SCENE = preload("res://scenes/plate.tscn")
const THE_ROCK_SCENE = preload("res://scenes/the_rock.tscn")
const COIN_SCENE = preload("res://scenes/coin.tscn")
var points = 0

@export var label: Label

func _on_heroi_game_over() -> void:
	print("game over")
	call_deferred("_trocar_cena")
	
func _trocar_cena():
	get_tree().change_scene_to_file("res://scenes/gameOver.tscn")



func _on_timer_timeout() -> void:
	var plate: Node2D = PLATE_SCENE.instantiate()
	var coin_plate = randf_range(770, 128)
	plate.position = Vector2(coin_plate , 0)
	
	var coin_spawn = randi_range(4, 0)
	var coin: Node2D = COIN_SCENE.instantiate()
	add_child(plate)
	
	if coin_spawn == 4:
		print("coin")
		
		await get_tree().create_timer(1.0).timeout
		add_child(coin)
	coin.position = Vector2(coin_plate , 0)
	
	
	
 
func _on_timer_rock_timeout() -> void:
	var the_rock: Node2D = THE_ROCK_SCENE.instantiate()
	var warning_rock = randf_range(872, 24)
	the_rock.position = Vector2(warning_rock, 0)
	
	add_child(the_rock)
	

func _on_timer_score_timeout() -> void:
	points += 10
	label.text = "Score: " + str(points)


func _on_heroi_score() -> void:
	points += 100
