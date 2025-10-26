{...}: {
  programs.helix.languages.language = [
    {
      name = "nix";
      language-servers = ["nixd"];
      formatter.command = "alejandra";
      auto-format = true;
    }
  ];
}
