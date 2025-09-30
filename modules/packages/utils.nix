{ pkgs, ... }:

{
	home.packages = with pkgs; [
		freerdp		# work with RDP
		eza				# modern ls
		bat				# modern cat
		fd				# modern find
		ripgrep		# modern grep
	];
}
