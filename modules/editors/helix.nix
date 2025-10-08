{pkgs, ...}: {
  programs.helix = {
    defaultEditor = true;
    enable = true;
    settings = {
      editor = {
        auto-format = true;
        line-number = "relative";
        cursorline = true;
        indent-guides.render = true;
        lsp.display-inlay-hints = true;
        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };
      };
    };
    languages.language = [
      {
        name = "nix";
        language-servers = ["nixd"];
        formatter.command = "${pkgs.alejandra}/bin/alejandra";
        auto-format = true;
      }
      {
        name = "go";
        auto-format = true;
        language-servers = ["gopls"];
      }
      {
        name = "java";
        auto-format = true;
        language-servers = ["jdtls"];
      }
    ];
  };
}
