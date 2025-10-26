{...}: {
  programs.helix.languages.language = [
    {
      name = "java";
      language-servers = ["jdtls"];
      auto-format = true;
    }
  ];
}
