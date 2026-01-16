return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    build = ':TSUpdate',
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    config = function()
      -- Replicate `ensure_installed` (runs asynchronously, skips existing languages).
      local languages = { 'bash', 'c', 'cpp', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'nix', 'query', 'rust', 'vim', 'vimdoc' }
      require('nvim-treesitter').install(languages)

      vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup('treesitter.setup', {}),
        callback = function(args)
          local buf = args.buf
          local filetype = args.match

          -- We need some mechanism to avoid running on buffers that do not
          -- correspond to a language (like oil.nvim buffers). This implementation
          -- checks if a parser exists for the current language.
          local language = vim.treesitter.language.get_lang(filetype) or filetype
          if not vim.treesitter.language.add(language) then
            return
          end

          -- Replicate `highlight = { enable = true }.
          vim.treesitter.start(buf, language)

          -- replicate `indent = { enable = true }.
          vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
