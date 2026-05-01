{ config, ... }:
{
  plugins.treesitter = {
    enable = true;
    #highlight.enable = true;
    #indent.enable = true;
    #folding.enable = true;
    grammarPackages = with config.plugins.treesitter.package.builtGrammars; [
      bash
      json
      lua
      make
      markdown
      markdown_inline
      nix
      regex
      toml
      vim
      vimdoc
      xml
      yaml
      rust
      typst
    ];
  };
}
