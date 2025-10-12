#!/usr/bin/env bash

# Получаем список доступных Wi-Fi сетей и выводим их в rofi
chosen_ssid=$(nmcli -g SSID device wifi list | rofi -dmenu -p "Select WiFi:")

# Если пользователь выбрал сеть (не нажал Cancel)
if [ -n "$chosen_ssid" ]; then
    # Пытаемся подключиться к выбранной сети
    # Для сетей с паролем nmcli запросит его в терминале. 
    # Для автоматизации можно передать пароль иным способом, но это небезопасно.
    nmcli device wifi connect "$chosen_ssid"
fi
