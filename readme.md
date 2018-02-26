# vim-colors-synthetic
> minimal vim color scheme

![synthetic](screenshots/synthetic.png)

`synthetic` is designed with the intention of minimizing the number of colors found in highlighted code snippets while still creating a worthy separation between tokens. It uses four major colors for the following purposes:
* **purple** for keywords: statements (`return`), tags (`<h1>`), and operators (`+`, `-`, `*`, `/`)
* **yellow** for names: identifiers, keys (`foo` in `{ foo: 3 }`), functions (`bar()`)
* **green** for string-like literals: `"baz"`, `'c'`
* **cyan** for constants: `42`, `1.08`, `PI`

## install
Copy `colors/synthetic.vim` to your `~/.vim/colors` directory, or add "semibran/vim-colors-synthetic" using a plugin manager of your choice.

## usage
`:colorscheme synthetic`
