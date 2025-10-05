{ pkgs, ... }:

{
	programs.waybar = {
		enable = true;
		settings = {
			mainBar = {
				layer = "top";
				position = "top";
				height = 30;
				spacing = 2;
				modules-left = ["hyprland/workspaces"];
				modules-center = [ "temperature" "cpu" ];
				modules-right = [ "pulseaudio" "memory" "battery" "hyprland/language" "clock" "tray"];

				"hyprland/workspaces" = {
					persistent-workspaces = {
						"*" = 9;
					};
					diseable-scroll = true;
					all-outputs = true;
				};

				temperature = {
					critical-threshold = 55;
					thermal-zone = 5;
					format = "{temperatureC}°C ❄";
					format-critical = "{temperatureC}°C! 󰈸";
					interval = 5;
				};

				  pulseaudio = {
          format = "{icon} {volume}%";
          format-muted = "󰖁 Muted";
          format-icons = {
            headphones = "󰋋";
            hands-free = "";
            headset = "󰋎";
            phone = "";
            portable = "";
            car = "";
            default = ["" "" ""];
          };
          on-click = "pavucontrol";
        };

				"hyprland/language" ={
					format = "{short}";
				};

        battery = {
          format = "{icon} {capacity}%";
          format-icons = ["󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
          format-charging = "󰂄 {capacity}%";
          format-plugged = "󱘖 {capacity}%";
          format-full = "󰁹 {capacity}%";
        };

        cpu = {
          format = "󰻠 {usage}%";
          tooltip = false;
        };

        memory = {
          format = "󰍛 {}%";
        };

        clock = {
          format = " {:%H:%M}";
          format-alt = " {:%d.%m.%Y}";
        };

        tray = {
          icon-size = 16;
          spacing = 8;
        };
			};
		};
		    style = ''
      * {
          border: none;
          border-radius: 6px;
          font-family: "MesloLGS Nerd Font Mono", "Font Awesome 6 Free";
          font-size: 13px;
          min-height: 0;
      }

      window#waybar {
          background-color: rgba(30, 30, 46, 0.9); /* @base - основной фон */
          color: #cdd6f4; /* @text */
          border-bottom: 1px solid rgba(108, 112, 134, 0.4); /* @overlay0 */
      }

      /* ОБЩИЙ ФОН ДЛЯ МОДУЛЕЙ СЛЕВА */
      #modules-left { 
					border-radius: 6px;
          margin: 4px 0 4px 8px;
          padding: 0 4px;
      }

      /* ОБЩИЙ ФОН ДЛЯ МОДУЛЕЙ СПРАВА */
      #modules-right { 
          border-radius: 6px;
          margin: 4px 8px 4px 0;
          padding: 0 4px;
      }

      /* 
        РАБОЧИЕ СТОЛЫ: Минимальное расстояние между ними
      */
      #workspaces {
          background-color: transparent;
          padding: 0;
      }

      #workspaces button {
          color: #cdd6f4; /* @text */
          background: transparent;
          padding: 0 8px; /* Немного уменьшил padding для ещё большей компактности */
          margin: 2px 0;
          min-width: 20px;
          min-height: 20px;
          border-radius: 4px;
          box-shadow: none;
      }

      /* Убираем правую границу у кнопок, чтобы они визуально сливались */
      #workspaces button:not(:last-child) {
          border-right: none; /* Раньше здесь была граница - теперь убрали */
      }

      /* АКТИВНЫЙ рабочий стол с подчёркиванием */
      #workspaces button.active {
          color: #cdd6f4; /* @text */
          background-color: transparent;
          border-bottom: 2px solid #cba6f7; /* @mauve */
          border-radius: 4px 4px 0 0;
      }

      /* Стиль при наведении */
      #workspaces button:hover {
          background: rgba(203, 166, 247, 0.2); /* @mauve с лёгкой прозрачностью */
          color: #1e1e2e; /* @base */
      }

      /* 
        МОДУЛИ (ЦЕНТР): Без фона, только текст и иконки
      */
      #tray,
      #pulseaudio,
      #memory,
      #cpu,
      #temperature,
      #battery,
      #clock {
          color: #cdd6f4; /* @text */
          background-color: transparent; /* Прозрачный фон для модулей центра */
          margin: 4px 2px;
          padding: 0 8px;
      }

      /* Индивидуальные цвета текста/иконок для модулей */
      #clock {
          color: #89b4fa; /* @blue */
          font-weight: bold;
      }

      #pulseaudio {
          color: #f5c2e7; /* @pink */
      }

      #battery {
          color: #a6e3a1; /* @green */
      }

      #battery.warning:not(.charging) {
          color: #f9e2af; /* @yellow */
      }

      #battery.critical:not(.charging) {
          color: #f38ba8; /* @red */
      }

      #memory {
          color: #b4befe; /* @lavender */
      }
   ''; 
	};
}
