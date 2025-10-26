{...}: {
  programs.helix.languages.language = [
    {
      name = "c";
      auto-format = true;
      language-servers = ["clangd"];
      formatter.command = "clang-format";
    }
  ];
}
