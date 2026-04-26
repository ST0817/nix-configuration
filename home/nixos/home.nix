{ ... }:
{
  home = {
    username = "nixos";
    homeDirectory = "/home/nixos";
    stateVersion = "25.11";
  };

  programs.home-manager.enable = true;

  imports = [
    ./zsh.nix
    ./starship.nix
    ./git.nix
    ./lazygit.nix
    ./direnv.nix
    #./neovim
    ./nixvim
    ./stylua
  ];
}
