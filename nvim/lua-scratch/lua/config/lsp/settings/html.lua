-- Vscode Documentation
--[[ To enable the Emmet abbreviation expansion in file types where it is not available by default, use the emmet.includeLanguages setting.
-- Make sure to use language identifiers for both sides of the mapping, with the right side being the language identifier of an Emmet supported language (see the list above). ]]

return {
  filetypes = {
    "html",
    "eelixir",
    "heex",
    "leex",
    -- "edge" -- When Added the blade_formatter ignore and got lsp html
  },
  --[[ settings = { ]]
  --[[   includeLanguages = { ]]
  --[[     edge = "html" ]]
  --[[   } ]]
  --[[ } ]]
}
