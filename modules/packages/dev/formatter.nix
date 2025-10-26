{pkgs, ...}: {
  home.packages = with pkgs; [
    alejandra # Nix formatter
    gofumpt # Go formatter
    prettier # CSS formatter
    nasmfmt # NASM formatter
    ruff # Python formatter
  ];
}
