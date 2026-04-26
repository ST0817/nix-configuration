{ ... }:
{
  plugins.cmp = {
    enable = true;
    settings = {
      sources = [
        { name = "nvim_lsp"; }
        { name = "async_path"; }
        { name = "nvim_lsp_signature_help"; }
      ];
      completion.autocomplete = [ "cmp.TriggerEvent.TextChanged" ];
      window = {
        completion.border = "rounded";
        documentation.border = "rounded";
      };
      formatting.fields = [
        "abbr"
        "icon"
      ];
      mapping = {
        "<Tab>" = ''
          cmp.mapping(function(fallback)
              if cmp.visible() then
                  cmp.select_next_item {
                      behavior = cmp.SelectBehavior.Select
                  }
              else
                  fallback()
              end
          end, { "i", "c" })
        '';
        "<CR>" = ''
          cmp.mapping(function(fallback)
              if cmp.get_selected_entry() then
                  cmp.confirm()
              else
                  fallback()
              end
          end, { "i", "c" })
        '';
        "<Down>" = ''
          cmp.mapping(function(fallback)
              if cmp.get_selected_entry() and cmp.get_selected_index() < #cmp.get_entries() then
                  cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
              else
                  fallback()
              end
          end, { "i", "c" })
        '';
        "<Up>" = ''
          cmp.mapping(function(fallback)
              if cmp.get_selected_entry() and cmp.get_selected_index() > 1 then
                  cmp.select_prev_item { behavior = cmp.SelectBehavior.Select }
              else
                  fallback()
              end
          end, { "i", "c" })
        '';
        "<C-Down>" = ''
          cmp.mapping(function(fallback)
              if cmp.visible() then
                  cmp.scroll_docs(4)
              else
                  fallback()
              end
          end, { "i" })
        '';
        "<C-Up>" = ''
          cmp.mapping(function(fallback)
              if cmp.visible() then
                  cmp.scroll_docs(-4)
              else
                  fallback()
              end
          end, { "i" })
        '';
      };
    };
    cmdline.":".sources = [
      { name = "cmdline"; }
      { name = "async_path"; }
    ];
  };
}
