{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      catppuccin-nvim
    ];

    extraPackages = with pkgs; [
      tree-sitter
    ];
  };

  xdg.configFile."nvim".source = ./lua;
}
