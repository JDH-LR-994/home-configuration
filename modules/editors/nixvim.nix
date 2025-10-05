{ pkgs, ... }:

{

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; {
      
    };

		colorschemes.catppuccin = {
			enable = true;
			settings = {
				flavour = "mocha";
				accent = "blue";
			};
		};

    extraPackages = with pkgs; [
      tree-sitter
    ];

		opts = {
			number = true;
			relativenumber = true;
			tabstop = 2;
			shiftwidth = 2;
			smartindent = true;
			termguicolors = true;
		};

		globals = {
			mapleader = " ";
		};

		keymaps = [
		  {
			  key = "<leader>w";
				action = ":w<CR>";
				options.desc = "Save file";
			}
			{
				key = "<leader>q";
				action = ":q<CR>";
				options.desc = "Quit";
			}
			{
				key = "<leader>wq";
				action = ":wq<CR>";
				options.desc = "Save and quit";
			}

		];
  };

}
