extends Node

var money = 1000

@onready var money_label = $MoneyLabel

func add_point():
    money += 100
    money_label.text = "Money:" + str(money)