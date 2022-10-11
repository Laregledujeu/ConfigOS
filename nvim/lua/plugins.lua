
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use 'nvim-lua/completion-nvim'
    
    use 'navarasu/onedark.nvim'
end)
