{
  description = "My nix configuraion";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixos-wsl = {
      url = "github:nix-community/NixOS-WSL";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs-home.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs-home";
    };
  };

  outputs =
    inputs@{ nixpkgs-home, ... }:
    let
      system = "x86_64-linux";
      pkgsHome = nixpkgs-home.legacyPackages.${system};
    in
    {
      nixosConfigurations = import ./nixos inputs { inherit system; };
      homeConfigurations = import ./home inputs { pkgs = pkgsHome; };
    };
}
