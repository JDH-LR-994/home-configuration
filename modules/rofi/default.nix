{ config, ... }:

{
	programs.rofi = {
		enable = true;
		location = "center";
		extraConfig = {
			sidebar-mode = true;
			modi = "drun,window,filebrowser,run";
			show-icons = true;	
			drun-display-format = "{icon} {name}";
      display-drun = " Apps";
      display-run = " Run";
			display-window = " Window";
      display-filebrowser = " File";
		};
		    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
    in {

			window = {
        width = mkLiteral "40%";   
				height = mkLiteral "35%";
				border-radius = mkLiteral "15px";
			};

			mainbox = {
        orientation = mkLiteral "vertical"; 
        children = map mkLiteral [ "inputbar" "hbox" ]; 
        spacing = mkLiteral "15px"; 
      };

			hbox = {
				orientation = mkLiteral "horizontal";
				children = map mkLiteral ["sidebar" "listview"];
				spacing = mkLiteral "15px";
			};

			inputbar = {
        children = map mkLiteral [ "entry"  ];
        padding = mkLiteral "12px";	
      };

      sidebar = {
        size = mkLiteral "0.3";
				orientation = mkLiteral "vertical"; 
        padding = mkLiteral "10px";
				margin-left = mkLiteral "15px";
        border-radius = mkLiteral "8px";  
			};

			button = {
        width = mkLiteral "7%"; 
        padding = mkLiteral "8px 12px"; 
        cursor = mkLiteral "pointer";
        background-color = mkLiteral "transparent";
        border-radius = mkLiteral "4px"; 
      };

      element = {
        padding = mkLiteral "4px 12px"; 
				spacing = mkLiteral "8px";
      };

      listview = {
        size = mkLiteral "0.7"; 
				scrollbar = mkLiteral "true";
        dynamic = mkLiteral "true";
        spacing = mkLiteral "2px";
      };
    };
	};
}
