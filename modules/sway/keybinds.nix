{...}: {
  wayland.windowManager.sway.config = let
    mod = "Mod4";
    term = "kitty";
  in {
    modifier = mod;
    terminal = term;
    keybindings = {
      "${mod}+Return" = "exec ${term}";
      "${mod}+Left" = "focus left";
      "${mod}+Right" = "focus right";
      "${mod}+Up" = "focus up";
      "${mod}+Down" = "focus down";
      "${mod}+q" = "kill";
      "${mod}+Space" = "exec rofi -show drun";
    };
  };
}
