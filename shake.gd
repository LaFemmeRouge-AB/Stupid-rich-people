extends Sprite2D

@export var normal : Texture2D
@export var clicked : Texture2D

@onready var sprite = $"."
@onready var email = $"../semail"

var dragging: bool = false
var drag_offset: Vector2 = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_active(false)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		get_parent()._on_sprite_clicked(self)
		dragging = true
		drag_offset = global_position - get_global_mouse_position()

func set_active(is_active: bool) -> void:
	if is_active:
		sprite.texture = clicked
		email.visible = true
	else:
		sprite.texture = normal
		email.visible = false

func _input(event: InputEvent) -> void:
		if dragging:
			if event is InputEventMouseMotion:
				global_position = get_global_mouse_position() + drag_offset
			
			if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
				dragging = false
