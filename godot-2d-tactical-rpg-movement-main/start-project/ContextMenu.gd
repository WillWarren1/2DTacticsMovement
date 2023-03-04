tool
class_name ContextMenu
extends Node2D


onready var _popup_menu: PopupMenu = $PopupMenu

# func _input(event):
# 	if event is InputEventMouseButton and event.is_pressed() and event.button_index == BUTTON_RIGHT and _popup_menu._target_unit:
# 		_popup_menu._last_mouse_position = get_global_mouse_position()
# 		_popup_menu.popup(Rect2(_popup_menu._last_mouse_position.x, _popup_menu._last_mouse_position.y, _popup_menu.rect_size.x, _popup_menu.rect_size.y))

func _open_popup():
	_popup_menu._last_mouse_position = get_global_mouse_position()
	_popup_menu.popup(Rect2(_popup_menu._last_mouse_position.x, _popup_menu._last_mouse_position.y, _popup_menu.rect_size.x, _popup_menu.rect_size.y))
