{ home-manager, nixvim, ... }:
{ pkgs, ... }:
{
  nixos = home-manager.lib.homeManagerConfiguration {
    inherit pkgs;
    modules = [
      ./nixos/home.nix
      nixvim.homeModules.nixvim
    ];
  };
}
