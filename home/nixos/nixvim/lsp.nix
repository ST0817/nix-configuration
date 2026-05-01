{ pkgs, ... }:
{
  lsp.servers =
    let
      serverNames = [
        "taplo"
        "jsonls"
        "yamlls"
        "nixd"
        "lua_ls"
        "rust_analyzer"
        "ts_ls"
        "tinymist"
        "cmake"
        "clangd"
      ];
      mapper = serverName: {
        name = serverName;
        value = {
          enable = true;
          package = null;
        };
      };
    in
    builtins.listToAttrs (map mapper serverNames);
  extraPackages = with pkgs; [
    taplo
    vscode-json-languageserver
    yaml-language-server
  ];
}
