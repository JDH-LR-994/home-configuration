{pkgs, ...}: {
  imports = [./aliases.nix];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = ["fzf" "git" "sudo"];
      theme = "powerlevel10k/powerlevel10k";
    };

    historySubstringSearch.enable = true;

    history = {
      ignoreDups = true;
      save = 10000;
      size = 10000;
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    initContent = ''
      source ${pkgs.fzf}/share/fzf/key-bindings.zsh

      if [[ -f ~/.p10k.zsh ]]; then
        source ~/.p10k.zsh
      else
        source "${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme"
      fi
      clear
      fastfetch
    '';
  };
}
