{pkgs, ...}: {
  home.packages = with pkgs; [
    cpufetch # info about CPU
    act # local github actions
    gdb # debugger
    gdbgui # debugger gui
    freerdp # work with RDP
    tree # utils for see tree directory
  ];
}
