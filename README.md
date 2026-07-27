# Dotfiles

Vim, of course. Uses native plugins.

Zsh config is set up for an oh-my-zsh installation, otherwise move it to home. OMZ `/custom/sensitive.zsh` is Git ignored.

## Installation

Download with `git clone --recursive ...` as Vim plugins are loaded as Git submodules.

Use [stow](https://www.gnu.org/software/stow/) to "install".

## Adding New Vim Plugins

`git add submodule https://... vim/.vim/pack/<author>/start/<repo>`

## Adding Files to an Existing Package

`stow` is a one-shot linker, not a sync daemon. After adding a new file or
subdirectory to a package (e.g. a new `themes/` dir under `ghostty/`), re-run
`stow --restow <package>` (or `-R`) so the new links get created. Just editing
the repo isn't enough.

## Troubleshooting

Remember, `stow` targets the parent directory by default.

Here's a cheesy command (mm, my favorite) to dry run removing the symlinks to see what's there (assuming you're running this from the `dotfiles` repo where `~` is the parent. Otherwise, change target with `-t ~`.

`stow -Dnv */`
