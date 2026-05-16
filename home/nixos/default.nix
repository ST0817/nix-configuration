{ home-manager, nixvim, ... }:
{ pkgs, ... }:
home-manager.lib.homeManagerConfiguration {
  inherit pkgs;
  modules = [
    ./home.nix
    nixvim.homeModules.nixvim
  ];
}
