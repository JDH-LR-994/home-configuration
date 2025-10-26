{...}: {
  programs.helix.languages.language = [
    {
      name = "json";
      auto-format = true;
      language-servers = ["json-languageserver"];
      formatter = {
        command = "prettier";
        args = ["--parser" "json"];
      };
    }
  ];
}
