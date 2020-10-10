syntax on
colorscheme nord


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=0 guibg=default
endif
