
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    
    use 'tpope/vim-fugitive'
    
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use 'BurntSushi/ripgrep'

    use 'sharkdp/fd' 

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    
    use 'navarasu/onedark.nvim'
end)
