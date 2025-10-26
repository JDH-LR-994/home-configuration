{...}: {
  home.username = "andrey";
  home.homeDirectory = "/home/andrey";

  home.stateVersion = "25.11";
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./modules
  ];

  programs.home-manager.enable = true;
}
