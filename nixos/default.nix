{ nixpkgs, nixos-wsl, ... }:
{ system, ... }:
{
  nixos-wsl = nixpkgs.lib.nixosSystem {
    inherit system;
    modules = [
      nixos-wsl.nixosModules.default
      ./nixos-wsl/configuration.nix
    ];
  };
}
