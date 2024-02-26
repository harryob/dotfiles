# harry's dotfiles

my dotfiles! uses [chezmoi](https://chezmoi.io/) to keep stuff organised, which is why this branch looks kinda funny! if you wanna see what the dotfiles look like after being processed, check out the [compiled output branch](https://github.com/harryob/dotfiles/tree/compiled), which is more or less what all these files end up looking like (on a MacOS install, that is)

chezmoi allows us a one line install for the dotfiles, which is very neat. as part of the install process, we also install chezmoi, so we can cleanup this utility after its been used to bootstrap itself

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply harryob -P
```
# text editor 

i use [nvim](./dot_config/nvim) as my text editor, supplemented by vscode for some funny niche languages without a neovim lsp

# wezterm

i love this terminal editor more than anything - and it's got a very minimal config (once you've parsed how to make a config) - that lives [here](./dot_config/wezterm/wezterm.lua)

# theme

primarily nord - particularly the [nordfox](https://github.com/EdenEast/nightfox.nvim) for neovim
