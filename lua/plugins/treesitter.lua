return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup()

    local ensure_installed = {
      'lua',
      'python',
      'javascript',
      'typescript',
      'vimdoc',
      'vim',
      'c',
      'cpp',
      'regex',
      'sql',
      'dockerfile',
      'toml',
      'json',
      'java',
      'go',
      'gitignore',
      'graphql',
      'yaml',
      'make',
      'cmake',
      'markdown',
      'markdown_inline',
      'bash',
      'tsx',
      'css',
      'html',
      'prisma',
    }

    local installed = require('nvim-treesitter').get_installed()
    local to_install = vim.tbl_filter(function(lang)
      return not vim.list_contains(installed, lang)
    end, ensure_installed)

    if #to_install > 0 then
      require('nvim-treesitter').install(to_install)
    end

    -- Auto-enable treesitter highlighting for languages without built-in Neovim support
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'prisma' },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
