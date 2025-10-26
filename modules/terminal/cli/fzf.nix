{...}: {
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    defaultOptions = [
      "--margin=1"
      "--layout=reverse"
      "--border=none"
      "--info=hidden"
      "--header="
      "--prompt=/ "
      "-i"
      "--no-bold"
    ];

    changeDirWidgetOptions = [
      "--preview='eza --tree --color=always {}'"
      "--preview-window=right:60%:wrap"
    ];

    fileWidgetOptions = [
      "--bind='enter:execute(hx {})'"
      "--preview='bat --style=numbers --color=always --line-range :500 {}'"
      "--preview-window=right:60%:wrap"
    ];
  };
}
