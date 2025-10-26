{pkgs, ...}: {
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    meslo-lgs-nf
    jetbrains-mono
    catppuccin-cursors
  ];
}
