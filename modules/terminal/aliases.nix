{ ... }:

{
  home.shellAliases = {
  
  # ========== Навигация ==========
  ".." = "cd ..";
  "..." = "cd ../..";
  "...." = "cd ../../..";

  # ========== Modern CLI tools ==========
  ls = "eza --icons --group-directories-first";
  ll = "eza -l --icons --group-directories-first";
  la = "eza -la --icons --group-directories-first";
  lt = "eza --tree --icons --level=2";
  lta =  "eza --tree --icons --all";

  cat = "bat --paging=never";
  find = "fd";
  grep = "rg";

  # ========== Git ==========
  gs = "git status";
  ga = "git add .";
  gc = "git commit";
  gcm = "git commit -m";
  gp = "git push";
  gpl = "git pull";

  # ========== Nix ==========
  hms = "home-manager switch --flake ~/.config/home-manager#andrey";
  nrs = "sudo nixos-rebuild switch --flake /etc/nixos#nixos";
  update-hm = "nix flake update ~/.config/home-manager && hms --upgrade";
  update-nixos = "nix flake update /etc/nixos && nrs --upgrade";
  clean = "nix-store --gc && nix-store --optimise";

  };
}
