{pkgs, ...}: {
  home.packages = with pkgs; [
    python3
    clang # C/C++
    fasm # Flat assembly
    go
    nasm # Netwide assembly
    rustup
    typescript
  ];
}
