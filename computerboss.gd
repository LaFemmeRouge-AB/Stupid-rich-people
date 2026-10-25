extends Node2D

@onready var mail_button: Button = $Mail
@onready var contacts: Button = $Contacts
@onready var minecraft_button: Button = $Minecraft
@onready var files_button: Button = $files
@onready var setting_button: Button = $setting
@onready var messages_button: Button = $Messages
@onready var maps_button: Button = $Maps
@onready var store_button: Button = $Appstore
@onready var files: TextureRect = $file
@onready var mail: Control = $inbox
@onready var mine: TextureRect = $mine
@onready var cont: TextureRect = $contacts
@onready var map: TextureRect = $map
@onready var app: TextureRect = $app
@onready var mess: TextureRect = $mess

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mail_button_pressed() -> void:
	mail.visible = true


func _on_files_button_pressed() -> void:
	files.visible = true


func _on_file_close_pressed() -> void:
	files.visible = false


func _on_minecraft_button_pressed() -> void:
	mine.visible = true


func _on_mine_close_pressed() -> void:
	mine.visible = false


func _on_cont_close_pressed() -> void:
	cont.visible = false

func _on_contacts_button_pressed() -> void:
	cont.visible = true


func _on_map_close_pressed() -> void:
	map.visible = false


func _on_maps_pressed() -> void:
	map.visible = true


func _on_app_close_pressed() -> void:
	app.visible = false


func _on_appstore_pressed() -> void:
	app.visible = true


func _on_button_pressed() -> void:
	mess.visible = false


func _on_messages_pressed() -> void:
	mess.visible = true
