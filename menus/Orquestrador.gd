extends Node

@onready var menu_principal = $Control
@onready var tela_de_opçoes = $"TelaDeOpçoes"
@onready var musica = $"TelaDeOpçoes/MarginContainer/VBoxContainer/musica"
var musica_mutada = false


func _on_opções_pressed() -> void:
	menu_principal.visible = false


func _on_menu_principal_pressed() -> void:
	menu_principal.visible = true


func _on_musica_pressed() -> void:
	musica_mutada = !musica_mutada
	
	if musica_mutada:
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), -80)
	
	else:
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 0)
		
	atualizar_texto_botao()
	
func atualizar_texto_botao():
	if musica_mutada:
		$"TelaDeOpçoes/MarginContainer/VBoxContainer/musica".text = "🔇 Música: OFF"
	else:
		$"TelaDeOpçoes/MarginContainer/VBoxContainer/musica".text = "🔊 Música: ON"


		
