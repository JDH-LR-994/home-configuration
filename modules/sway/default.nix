{pkgs, ...}: {
  imports = [
    ./keybinds.nix
  ];
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    config = {
      bars = [
        {
          command = "${pkgs.waybar}/bin/waybar";
        }
      ];
      input."type:keyboard" = {
        xkb_layout = "us,ru";
        xkb_options = "grp:alt_shift_toggle";
      };
    };
  };
}
