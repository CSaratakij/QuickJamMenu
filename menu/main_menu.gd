
extends Control

const NEXT_SCENE_PATH = "Your target path here."

onready var tree = get_tree()
onready var _option = get_parent().get_node("option")

func _ready():
	get_node("buttons/btnStart").connect("pressed", self, "_on_btnStart_pressed")
	get_node("buttons/btnOption").connect("pressed", self, "_on_btnOption_pressed")
	get_node("buttons/btnQuit").connect("pressed", self, "_on_btnQuit_pressed")

func _on_btnStart_pressed():
	tree.change_scene(NEXT_SCENE_PATH)

func _on_btnOption_pressed():
	_option.show()

func _on_btnQuit_pressed():
	tree.quit()
