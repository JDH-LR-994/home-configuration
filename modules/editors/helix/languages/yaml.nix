{...}: {
  programs.helix.languages.language = [
    {
      name = "yaml";
      auto-format = true;
      language-servers = ["yaml-language-server"];
      formatter = {
        command = "prettier";
        args = ["--parser" "yaml"];
      };
    }
  ];
}
