{ pkgs, ... }:

{
  wsl = {
    enable = true;
    defaultUser = "nixos";
  };

  system.stateVersion = "25.11";
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  time.timeZone = "Asia/Tokyo";
  fonts.packages = with pkgs; [ noto-fonts-cjk-serif ];

  programs.zsh.enable = true;
  users.users.nixos.shell = pkgs.zsh;
}
