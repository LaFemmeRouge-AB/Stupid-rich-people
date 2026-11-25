extends Area2D

@export var normal = Texture2D
@export var hover = Texture2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_mouse_entered() -> void:
	if normal:
		$".".texture = hover
		$".".scale = Vector2(0.073, 0.072)


func _on_area_2d_mouse_exited() -> void:
		$".".texture = normal
		$".".scale = Vector2(0.11, 0.109)
