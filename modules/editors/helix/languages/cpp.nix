{...}: {
  programs.helix.languages.language = [
    {
      name = "cpp";
      auto-format = true;
      language-servers = ["clangd"];
      formatter.command = "clang-format";
    }
  ];
}
