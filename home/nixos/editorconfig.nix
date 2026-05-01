{ ... }:
{
  editorconfig = {
    enable = true;
    settings = {
      "*" = {
        charset = "utf-8";
        end_of_line = "lf";
        trim_trailing_whitespace = true;
        insert_final_line = true;
        indent_style = "space";
        indent_size = 4;
      };
      "*.{nix, yaml, yml}".indent_size = 2;
    };
  };
}
