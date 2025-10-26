{...}: {
  programs.helix.languages.language = [
    {
      name = "typescript";
      auto-format = true;
      language-servers = ["typescript-language-server"];
      formatter = {
        command = "prettier";
        args = ["--parser" "typescript"];
      };
    }
  ];
}
