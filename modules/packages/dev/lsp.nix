{pkgs, ...}: {
  home.packages = with pkgs; [
    nixd # Nix server
    gopls # Go server
    jdt-language-server # Java server
    clang-tools # C/C++ server
    pylyzer # Python server
    typescript-language-server # TypeScript/JavaScript server
    vscode-langservers-extracted # HTML/CSS/JSON server
    asm-lsp # NASM server
    yaml-language-server # Yaml server
  ];
}
