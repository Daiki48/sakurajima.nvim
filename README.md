# sakurajima.nvim

![sakurajima-icon](https://github.com/Daiki48/sakurajima.nvim/assets/102207294/33ea8f33-4495-4332-8c17-3695fbc30165.png)

Sakurajima is the name of a active volcano in Kagoshima Prefecture, Japan.  
Sakurajima erupts almost daily :boom:  

The theme of this color schema is the volcanic ash and magma of Sakurajima.

This color scheme was created using Sakurajima as a motif.  
This is the background color with ash added to dark mode.
And the main color scheme is warm, reminiscent of magma.  
This is entirely a matter of my preference.

If you like this color scheme, please use it.  
I love Sakurajima.  

## Images

### For example, dashboard highlight

![sakurajima-dashboard](https://github.com/Daiki48/sakurajima.nvim/assets/102207294/12d3f999-a44b-47ca-afcc-0cd326754175.png)

### For example, typescript coding highlight

![sakurajima-typescript](https://github.com/Daiki48/sakurajima.nvim/assets/102207294/02b86415-db9b-4bdf-8c39-61bc2a77e84d.png)

### For example, coc.nvim floating highlight

![sakurajima-coc](https://github.com/Daiki48/sakurajima.nvim/assets/102207294/371aeae0-7d69-4dad-935b-bd3a6db589fc.png)

### For example, hop.nvim

![sakurajima-hop](https://github.com/Daiki48/sakurajima.nvim/assets/102207294/7ec2c284-b90b-4898-bd41-d83aa413b754.png)

### For example, find files in telescope.nvim

![sakurajima-telescope-ff](https://github.com/Daiki48/sakurajima.nvim/assets/102207294/8dd1cd15-d728-4005-8b14-8b22f108c631.png)

[See more...](https://github.com/Daiki48/sakurajima.nvim/tree/main/screenshots)

## Usage

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "Daiki48/sakurajima.nvim",
    lazy = false,
    branch = "main",
    config = function()
        vim.cmd([[colorscheme sakurajima]])
    end,
},
```

## Support

### [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

```lua
require("lualine").setup({
    options = {
        theme = "sakurajima"
    }
})
```

## Reference

[my dotfiles](https://github.com/Daiki48/dotfiles/blob/main/.config/nvim/)

## LISENCE

MIT
