# Dotfiles

Vim, of course. Uses native plugins.

Zsh config is set up for an oh-my-zsh installation, otherwise move it to home.

## Installation

Download with `git clone --recursive ...` as Vim plugins are loaded as Git submodules.

Use [stow](https://www.gnu.org/software/stow/) to "install".

## Troubleshooting

Remember, `stow` targets the parent directory by default.

Here's a cheesy (mm, my favorite) to dry run removing the symlinks to see what's there (assuming you're running this from the `dotfiles` repo where `~` is the parent. Otherwise, change target with `-t ~`.

`stow -Dnv */`
