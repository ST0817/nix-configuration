{ ... }:
{
  keymaps = [
    {
      mode = "n";
      key = "<Leader>w";
      action = "<Cmd>write<CR>";
    }
    {
      mode = "n";
      key = "<Leader>q";
      action = "<Cmd>quit<CR>";
    }
    {
      mode = "n";
      key = "<Leader>;";
      action = "mmA;<ESC>`m";
    }
    {
      mode = "i";
      key = "<A-;>";
      action = "<ESC>mmA;<ESC>`ma";
    }
  ];
}
