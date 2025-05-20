extends Node

@onready var menu_principal = $Control
@onready var tela_de_opçoes = $"TelaDeOpçoes"
func _on_opções_pressed() -> void:
	menu_principal.visible = false


func _on_menu_principal_pressed() -> void:
	menu_principal.visible = true
