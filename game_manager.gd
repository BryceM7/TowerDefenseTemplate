extends Node

var money = 1000

@onready var money_label = $MoneyLabel
@onready var game_manager = get_tree().get_root().get_node("Main/UI")

func add_point():
    money += 100
    money_label.text = "Money:" + str(money)

func lose_pointr():
    money -= 100
    money_label.text = "Money:" + str(money)

    if money < 0:
        get_tree().change_scene_to_file("res://scenes/menu.tscn")
        
        
        