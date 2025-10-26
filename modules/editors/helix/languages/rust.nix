{...}: {
  programs.helix.languages.language = [
    {
      name = "rust";
      auto-format = true;
      language-servers = ["rust-analyzer"];
      formatter.command = "rustfmt";
    }
  ];
}
