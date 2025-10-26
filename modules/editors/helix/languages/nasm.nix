{...}: {
  programs.helix.languages.language = [
    {
      name = "nasm";
      auto-format = true;
      language-servers = ["asm-lsp"];
      formatter.command = "nasmfmt";
    }
  ];
}
