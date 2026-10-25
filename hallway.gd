extends Node2D

@onready var progress_bar: ProgressBar = $ProgressBar

@export var tar_sprites: Array[Node2D] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_progress_bar_value_changed(value: float) -> void:
	await get_tree().create_timer(2.0).timeout
	var is_bar_full: bool = (value >= progress_bar.max_value)
	print("--- Progress Bar Changed ---")
	print("Current Value: ", value, " | Max Value: ", progress_bar.max_value)
	print("Is Bar Full?: ", is_bar_full)
	print("Number of sprites in tar_sprites array: ", tar_sprites.size())
	for sprite in tar_sprites:
		print("checksprite")
		if sprite.has_method("set_filled"):
			print("hasmethod")
			sprite.call("set_filled", is_bar_full)
		else:
			print("nomethod")
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://office3.tscn")
