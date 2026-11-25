extends Control

@onready var popup_panel: PopupPanel = $PopupPanel
@onready var close_button: Button = $close_button
@onready var control: Control = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_onebutton_pressed() -> void:
	popup_panel.visible = true
	popup_panel.popup_centered()
	
	await get_tree().create_timer(7.0).timeout
	
	popup_panel.visible = false


func _on_twobutton_pressed() -> void:
	popup_panel.visible = true
	popup_panel.popup_centered()
	
	await get_tree().create_timer(7.0).timeout
	
	popup_panel.visible = false


func _on_close_button_pressed() -> void:
	$".".visible = false
