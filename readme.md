# vim-colors-synthetic
> minimal vim color scheme

![synthetic](screenshots/synthetic.png)

`synthetic` is designed with the intention of minimizing the number of colors found in highlighted code snippets while still creating a worthy separation between tokens. It uses four major colors for the following purposes:
* **purple** - keywords: statements (`return`), tags (`<h1>`), and operators (`+`, `-`, `*`, `/`)
* **yellow** - names: identifiers, keys (`foo` in `{ bar: 3 }`), functions (`baz()`)
* **green** - string-like literals: `"foo"`, `'c'`
* **cyan** - constants: `42`, `1.08`, `PI`

## install
Copy `colors/synthetic.vim` to your `~/.vim/colors` directory, or add "semibran/vim-colors-synthetic" using a plugin manager of your choice.

## usage
`:colorscheme synthetic`
