{ home-manager, ... }:
{ pkgs, ... }:
home-manager.lib.homeManagerConfiguration {
  inherit pkgs;
  modules = [
    ./home.nix
  ];
}
