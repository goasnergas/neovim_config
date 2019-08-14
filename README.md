# My nvim config

My simple and minimalist neovim config.

## Setup

Install nvim from package or compile from sources (if the Linux distribution is not up to date, e.g Debian)

Install vim-plug  (https://github.com/junegunn/vim-plug)

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Copy the following files in `~/.config/nvim/` :

```
colors.vim
comments.vim
git.vim
init.vim
nerdtree.vim
statusbar.vim
std.vim
```

TODO: see if we can integrate ripgrep

Then, run nvim and install plugins:

```
vim +PlugInstall +quit
```

## Shortcuts/Functions

Cleanup trailing whitespaces : `:call DeleteTrailingWS()`

<F2>: toggle nerdtree
<F3>: toggle line number
<F4>: run scrollcolor

comments line: <gc> (with Ctrl+V) or <gcc> for the current line

TODO: shortcut to open a file in a new tab with nerdtree
TODO: force AirlineTheme value
Change Statusbar theme: `:AirlineTheme +tab`

## Sources/Inspirations

https://neovim.io/
https://github.com/leblancd/vim-go-ide
https://stackoverflow.com/questions/4617059/showing-trailing-spaces-in-vim
https://github.com/scrooloose/nerdtree
http://interestinginnit.blogspot.com/2013/02/focus-cursor-in-editor-window-with-vim.html
https://vim-bootstrap.com/

## Plugins I have not tried yet

- delimitMate
- tagbar
- indentLine
- powerline fonts
- vim-racer
