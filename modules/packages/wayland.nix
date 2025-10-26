{pkgs, ...}: {
  home.packages = with pkgs; [
    swaynotificationcenter
    grim
    slurp
    wl-clipboard
    swaybg
    hyprpaper
    waypaper
    swww
  ];
}
