extends Control

var muted = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$HSplitContainer/PanelContainer/VBoxContainer/MenuButton.get_popup().connect("id_pressed",self,"menu_button")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func menu_button(id):
	match id:
		0:
			mute()

func mute():
	muted = !muted
	AudioServer.set_bus_mute(0,muted)
	$HSplitContainer/PanelContainer/VBoxContainer/MenuButton.get_popup().set_item_checked(0,muted)
