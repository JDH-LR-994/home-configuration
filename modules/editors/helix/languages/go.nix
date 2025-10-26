{...}: {
  programs.helix.languages.language = [
    {
      name = "go";
      language-servers = ["gopls"];
      formatter.command = "gofumpt";
      auto-format = true;
    }
  ];
}
