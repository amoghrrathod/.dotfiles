-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
return {
          {
                    "folke/edgy.nvim",
                    ---@module 'edgy'
                    ---@param opts Edgy.Config
                    opts = function(_, opts)
                              for _, pos in ipairs({ "top", "bottom", "left", "right" }) do
                                        opts[pos] = opts[pos] or {}
                                        table.insert(opts[pos], {
                                                  ft = "snacks_terminal",
                                                  size = { height = 1 },
                                                  title = "%{b:snacks_terminal.id}: %{b:term_title}",
                                                  filter = function(_buf, win)
                                                            return vim.w[win].snacks_win
                                                                      and vim.w[win].snacks_win.position == pos
                                                                      and vim.w[win].snacks_win.relative == "editor"
                                                                      and not vim.w[win].trouble_preview
                                                  end,
                                        })
                              end
                    end,
          },
}
