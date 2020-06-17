# pyvim

## Intro
*__pyvim DOES NOT support Python 2__*

pyvim is a preconfigured plugins and settings [Vim] tailor made for Python
development.

Included Vim plugins:
- [Vundle.vim] - plugins management
- [NERDTree] - tree file explore
- [NERD Commenter] - code comment
- [YouCompleteMe] - code completion
- [SimpylFold] - cold folding for Python
- [lightline.vim] - statusline/tabline
- [fugitive.vim] - git integration
- [syntastic] - syntax check
- [auto-pairs] - auto generates surround pairs

pyvim is good for remote Python development with iPad via `ssh`/`mosh` as 
plugins & settings preconfigured in `.vimrc` are fully tested on the iPad 
Pro with its' Magic Keyboard using [Blink], and the macOS built-in 
terminal.

## Installation
You can either use the `.vimrc` included directly and install [Vundle] & 
[YouCompleteMe] youself, or pull the prebuilt docker images from Docker 
Hub:
```sh
docker pull devtography/pyvim:tagname
```

### Supported tags and repective `Dockerfile` links
- [py3.8], [py3.8-focal], [latest]
- [py3.7], [py3.7-focal]

## Fetaures request
If there's any feature you'd like to see it be included in pyvim, you can 
open a new issue to make the request, or contribute via a pull request.

By making the request, please do explain why you think the requesting 
feature should be included. The general principle for the requesting 
feature to be accepted is the feature shold be benefit for the majority, 
and not anything heavy like en elephant whcih slows the Vim down.

## Contributions
Contributions via pull requests are welcome and encouraged :)

## License
pyvim is licensed under the [Apache License, Version 2.0](LICENSE.md).

[Vim]: https://www.vim.org
[Vundle]: https://github.com/VundleVim/Vundle.vim
[NERDTree]: https://github.com/preservim/nerdtree
[NERD Commenter]: https://github.com/preservim/nerdcommenter
[YouCompleteMe]: https://github.com/ycm-core/YouCompleteMe
[SimpylFold]: https://github.com/tmhedberg/SimpylFold
[lightline.vim]: https://github.com/itchyny/lightline.vim 
[fugitive.vim]: https://github.com/tpope/vim-fugitive
[syntastic]: https://github.com/vim-syntastic/syntastic
[auto-pairs]: https://github.com/jiangmiao/auto-pairs
[Blink]: https://blink.sh
[latest]: https://github.com/Devtography/pyvim/blob/master/docker/Dockerfile
[py3.8]: https://github.com/Devtography/pyvim/blob/master/docker/Dockerfile
[py3.8-focal]: https://github.com/Devtography/pyvim/blob/master/docker/Dockerfile
[py3.7]: https://github.com/Devtography/pyvim/blob/master/docker/Dockerfile_py3.7
[py3.7-focal]: https://github.com/Devtography/pyvim/blob/master/docker/Dockerfile_py3.7
