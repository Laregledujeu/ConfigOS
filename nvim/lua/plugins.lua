
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    
    use 'tpope/vim-fugitive'
    
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'navarasu/onedark.nvim'
end)
