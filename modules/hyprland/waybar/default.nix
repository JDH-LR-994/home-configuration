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
				modules-right = [ "pulseaudio" "memory" "battery" "clock" "tray"];

				"hyprland/workspaces" = {
					diseable-scroll = true;
					all-outputs = true;
				};

				"temperature" = {
					thermal-zone = 5;
				};

			};
		};
		style = ''
		* {
				border: none;
			}
		window#waybar {
			background-color: rgba(0,0,0,0.5);
			color: #ffffff;
		}
		'';
	};
}
