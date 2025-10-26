{...}: {
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
  };
}
