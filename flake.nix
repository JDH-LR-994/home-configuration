{
  description = "Home Manager configuration of andrey";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		catppuccin.url = "github:catppuccin/nix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
		nixvim = {
			url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs =
    { nixpkgs, home-manager, nixvim, catppuccin, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations."andrey" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ 
				  ./home.nix
					nixvim.homeModules.nixvim
					catppuccin.homeModules.catppuccin
				];
      
			};
  };
}
