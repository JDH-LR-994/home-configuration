{...}: {
  programs.obsidian = {
    enable = true;
    defaultSettings = {
      communityPlugins = [
        "Calendar"
        "Iconize"
        "Homepage"
        "Day Planner"
      ];
      themes = "Catppuccin";
    };
  };
}
