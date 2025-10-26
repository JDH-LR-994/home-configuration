{...}: {
  programs.flatpak = {
    enable = true;
    packages = [
      {
        app = "org.vinegarhq.Sober";
        remotes = [
          {
            name = "sober";
            url = "https://sober.vinegarhq.org/sober.flatpakrepo";
          }
        ];
      }
    ];
  };
}
