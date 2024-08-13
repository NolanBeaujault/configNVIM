return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      "*", -- Activer le colorizer pour tous les fichiers
      css = { rgb_fn = true }, -- CSS spécifique: rgb() et d'autres fonctions
    })
  end,
}
