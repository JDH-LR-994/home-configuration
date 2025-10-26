{...}: {
  services.flatpak = {
    enable = true;
    packages = [
      {
        flatpakref = "https://sober.vinegarhq.org/sober.flatpakref";
        # sha256 обязателен для чистой сборки!
        # Получите его командой: nix-prefetch-url https://sober.vinegarhq.org/sober.flatpakref
        sha256 = "sha256-VFRvboQ7IZwYDQvEcWimOuno7vIj+5EztOvxCHvwSN4="; # ← ЗАМЕНИТЕ НА РЕАЛЬНЫЙ ХЭШ!
      }
    ];
  };
}
