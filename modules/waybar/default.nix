{...}: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        spacing = 2;
        modules-left = ["sway/workspaces"];
        modules-center = ["temperature" "cpu"];
        modules-right = ["pulseaudio" "memory" "battery" "sway/language" "clock" "tray"];

        "sway/workspaces" = {
          persistent-workspaces = {
            "*" = 9;
          };
          diseable-scroll = true;
          all-outputs = true;
        };

        temperature = {
          critical-threshold = 70;
          thermal-zone = 5;
          format = "{temperatureC}°C ❄";
          format-critical = "{temperatureC}°C 󰈸";
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

        "sway/language" = {
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
        /* reference the color by using @color-name */
        color: @text;
      }

      window#waybar {
        /* you can also GTK3 CSS functions! */
        background-color: shade(@base, 0.9);
        border: 2px solid alpha(@crust, 0.3);
      }
    '';
  };
}
