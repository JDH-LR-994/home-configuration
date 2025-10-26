{...}: {
  programs.helix.languages.language = [
    {
      name = "html";
      auto-format = true;
      language-servers = ["html-languageserver"];
      formatter = {
        command = "prettier";
        args = ["--parser" "html"];
      };
    }
  ];
}
