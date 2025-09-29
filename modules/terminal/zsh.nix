{ pkgs, ... }:

{
  imports = [ ./aliases.nix ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      theme  = "powerlevel10k/powerlevel10k";
    };

    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    initContent = ''
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
