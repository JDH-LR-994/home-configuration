{...}: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        modules-left = ["hyprland/workspaces"];
        modules-center = ["hyprland/window"];
        modules-right = [
          "pulseaudio"
          "backlight"
          "network"
          "battery"
          "temperature"
          "clock"
          "tray"
          "custom/lock"
          "custom/power"
        ];

        network = {
          format-icons = [
            "󰤯"
            "󰤟"
            "󰤢"
            "󰤥"
            "󰤨"
          ];
          format-ethernet = " {bandwidthDownOctets}";
          format-wifi = "{icon} {signalStrength}%";
          format-disconnected = "󰤮";
          tooltip = false;
          on-click = "nm-applet";
        };

        "hyprland/workspaces" = {
          diseable-scroll = true;
          sort-by-name = true;
          format = "  {icon}  ";
          format-icons = {
            default = "";
          };
        };
        "hyprland/window" = {
          max-lenght = 22;
          separate-outputs = true;
          rewrite = {
            "" = " 🙈 No Windows? ";
          };
        };
        tray = {
          icon-size = 14;
          spacing = 10;
        };
        backlight = {
          device = "intel_backlight";
          format = "{icon} {percent}%";
          format-icons = ["" "" "" "" "" "" "" "" ""];
        };

        temperature = {
          critical-threshold = 70;
          thermal-zone = 5;
          format = "❄ {temperatureC}°C";
          format-critical = "󰈸 {temperatureC}°C";
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
          tooltip = false;
          on-click = "pavucontrol";
        };

        battery = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-charging = "  {capacity}%";
          format-plugged = "  {capacity}%";
          format-icons = ["" "" "" "" ""];
        };

        clock = {
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format-alt = " {:%d/%m/%Y}";
          format = " {:%H:%M}";
        };

        "custom/lock" = {
          tooltip = false;
          on-click = "hyprlock";
          format = "";
        };
        "custom/power" = {
          tooltip = false;
          on-click = "wlogout &";
          format = "襤";
        };
      };
    };
    style = builtins.readFile ./style.css;
  };
}
