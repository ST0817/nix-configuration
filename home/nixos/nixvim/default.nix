{ ... }:
{
  programs.nixvim = {
    enable = true;
    viAlias = true;
    imports = [
      ./colorscheme.nix
      ./options.nix
      ./keymaps.nix
      ./plugins
      ./lsp.nix
      ./diagnostic.nix
    ];
  };
}
