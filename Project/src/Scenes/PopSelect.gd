extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	add_item("Single", 1)
	add_item("Sporadic", 2)
	add_item("Jungle", 3)
	add_item("Universal", 4)
	selected = 2
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
