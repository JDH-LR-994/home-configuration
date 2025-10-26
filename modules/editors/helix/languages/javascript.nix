{...}: {
  programs.helix.languages.language = [
    {
      name = "javascript";
      auto-format = true;
      language-servers = ["typescript-language-server"];
      formatter = {
        command = "prettier";
        args = ["--parser" "babel"];
      };
    }
  ];
}
