{pkgs, ...}: {
  home.packages = with pkgs; [
    pavucontrol
    networkmanagerapplet
    libreoffice-fresh
    eww
  ];
}
