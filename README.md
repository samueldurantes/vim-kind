# kind-vim
Syntax file highlight for Kind

## Installation

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'samueldurantes/vim-kind'
```

Add this to your `.vimrc` or `init.vim`

```vim
au BufRead,BufNewFile *.kind set filetype=kind
```
### Manually

#### On VIM
Clone this repo and past the folder "syntax" into `~/.vim/` and add in your `.vimrc` file the next line:


```vim
au BufRead,BufNewFile *.kind set filetype=kind
```

#### On NeoVim
Clone this repo and past the folder "syntax" into `~/.config/nvim/` and add in your `init.vim` file the next line:

```vim
au BufRead,BufNewFile *.kind set filetype=kind
```

## Preview
![code](./preview.png)
