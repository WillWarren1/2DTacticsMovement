extends PopupMenu


enum PopupIds {
	VIEW = 100,
	ATTACK,
}

var _last_mouse_position

var _target_unit: Unit

onready var _pm = self

func _ready():
	_pm.add_item("view", PopupIds.VIEW)
	_pm.add_item("attack", PopupIds.ATTACK)
	_pm.connect("id_pressed", self, "_on_PopupMenu_id_pressed")
	_pm.connect("index_pressed", self, "_on_PopupMenu_index_pressed")

func _on_PopupMenu_id_pressed(id):
	print_debug(id)
	match id:
		PopupIds.VIEW:
			var view_string = "viewing target unit, health: {targetHealth}"
			print(view_string.format({"targetHealth": _target_unit.hit_points}))
		PopupIds.ATTACK:
			var attack_string = "attacking target unit, health: {targetHealth}"
			print(attack_string.format({"targetHealth": _target_unit.hit_points}))


func _on_PopupMenu_index_pressed(index):
	print_debug(index)
