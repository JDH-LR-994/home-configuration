{...}: {
  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;

    font = {
      name = "JetBrains Mono";
      size = 12;
    };
    settings = {
      shell = "zsh";
      confirm_os_window_close = 0;
      tab_fade = 1;
      enabled_layouts = "splits";
      cursor_trail = 1;
    };
  };
}
