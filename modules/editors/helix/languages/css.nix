{...}: {
  programs.helix.languages.language = [
    {
      name = "css";
      auto-format = true;
      language-servers = ["css-languageserver"];
      formatter = {
        command = "prettier";
        args = ["--parser" "css"];
      };
    }
  ];
}
