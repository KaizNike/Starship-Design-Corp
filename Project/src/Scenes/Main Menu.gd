extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var popSelect = $"New Game Window/PanelContainer/MainSplit/ContentSplit/OptionsScroll/Options/OptionsBox/PopSplit/PopSelect"
onready var fTSelect = $"New Game Window/PanelContainer/MainSplit/ContentSplit/OptionsScroll/Options/OptionsBox/FounderSplit/FTSelect"
onready var techSelect = $"New Game Window/PanelContainer/MainSplit/ContentSplit/OptionsScroll/Options/OptionsBox/TechSplit/TechSelect"
onready var ecoSelect = $"New Game Window/PanelContainer/MainSplit/ContentSplit/OptionsScroll/Options/OptionsBox/EcoSplit/EcoSelect"
onready var compSelect = $"New Game Window/PanelContainer/MainSplit/ContentSplit/OptionsScroll/Options/OptionsBox/CompSplit/CompSelect"
onready var gSSelect = $"New Game Window/PanelContainer/MainSplit/ContentSplit/OptionsScroll/Options/OptionsBox/SettingsSplit/GSSelect"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"Main Menu UI/MenuContainer/VBoxContainer/VersionButton".text = "Version " + str(str(Globals.version[0]) + "." + str(Globals.version[1]) + "." + str(Globals.version[2]))
	$VI/VICont/VISplit/VScrollBar/VIDataLabel.text = Globals.info
	$"New Game Window".visible = false
	$"Main Menu UI".visible = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$DeskLamp.position = $"Main Menu UI/MenuContainer".rect_position + Vector2(300, 0)


func _on_AnimationPlayer_animation_finished(anim_name):
	print(anim_name)
	if anim_name == "turn_off":
		get_tree().quit()
	pass # Replace with function body.


func _on_QuitButton_pressed():
	$DeskLamp/AnimationPlayer.play("turn_off")
	pass # Replace with function body.


func _on_VersionButton_pressed():
	$VI/VICont.popup_centered()
#	if $VI.visible == true:
#		$VI.visible = false
#	else:
#		$VI.visible = true
	pass # Replace with function body.


func _on_Button_pressed():
	$VI.visible = false
	pass # Replace with function body.


func _on_VIHideButton_pressed():
	$VI.visible = false
	$VI/VICont.hide()
	pass # Replace with function body.


func _on_NGButton_pressed():
	$"Main Menu UI".visible = false
	$"New Game Window".visible = true
	pass # Replace with function body.


func _on_BackButton_pressed():
	$"Main Menu UI".visible = true
	$"New Game Window".visible = false
	pass # Replace with function body.


func _on_StartButton_pressed():
	Globals.currentGameOptions = {"Pop": popSelect.get_item_text(popSelect.get_selected_id()), 
	"FounderTrait": fTSelect.get_item_text(fTSelect.get_selected_id()),
	"Tech": techSelect.get_item_text(techSelect.get_selected_id()),
	"Eco": ecoSelect.get_item_text(ecoSelect.get_selected_id()),
	"Competitors": compSelect.get_item_text(compSelect.get_selected_id()),
	"Settings": gSSelect.get_item_text(gSSelect.get_selected_id())
	}
	get_tree().change_scene("res://src/Scenes/Main.tscn")
	pass # Replace with function body.
