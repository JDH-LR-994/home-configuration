{...}: {
  programs.helix.languages.language = [
    {
      name = "python";
      auto-format = true;
      language-servers = ["pylyzer"];
      formatter.command = "ruff";
    }
  ];
}
