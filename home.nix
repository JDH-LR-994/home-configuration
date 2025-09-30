{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "andrey";
  home.homeDirectory = "/home/andrey";
 
  home.stateVersion = "25.05"; # Please read the comment before changing.

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./modules
  ];
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
		obsidian
    zsh-powerlevel10k
		catppuccin-cursors
    alacritty
    meslo-lgs-nf
    eww
  ];

	fonts.fontconfig.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
