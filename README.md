# dotfiles

> Some dotfiles and what not.


<p align="center">
  <img src="docs/screenshot.png" style="max-width:80%;" border="0" />
</p>

## Working with stuff
* Install or update with `source bootstrap.sh`
* First time mac setup with `./.macos`
* Install common brew packages with `./brew.sh`

## Some good comands to remember:

### `json`
Syntax-highlight JSON strings or files

```bash
echo '{"foo":42, "bar": {"baz": false}}' | json

> {
>     "bar": {
>        "baz": false
>    },
>    "foo": 42
> }
```

### `tre`
`tre` is a shorthand for `tree` with hidden files and color enabled.

```bash
tre dotfiles/init

>  1 init
>  2 ├── .DS_Store
>  3 ├── Flat.itermcolors
>  4 ├── Flat.terminal
>  5 ├── Solarized\ Dark\ xterm-256color.terminal
>  6 ├── Solarized\ Dark.itermcolors
>  7 └── com.googlecode.iterm2.plist
>  8
>  9 0 directories, 6 files
```


Opens the github page for the current working dir.

### `mkd`
Create a new directory and enter it.

### `cdf`
Change working directory to the top-most Finder.

### `fs`
Determine size of a file or total size of a directory.
```bash
fs dotfiles
> 604K	dotfiles
```

### `server`
Start python simple HTTP server from a directory, optionally specifying the port.


## Links and stuff
* This is based heavily off the awesome [Mathias dotfiles](https://github.com/mathiasbynens/dotfiles) repo.


## tmux
https://github.com/tmux-plugins/tpm
