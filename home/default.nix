{ home-manager, ... }:
{ pkgs, ... }:
{
  nixos = home-manager.lib.homeManagerConfiguration {
    inherit pkgs;
    modules = [
      ./nixos/home.nix
    ];
  };
}
