# harry's dotfiles

my dotfiles! uses [https://www.chezmoi.io/](chezmoi) to keep stuff organised, which is why this branch looks kinda funny! if you wanna see what the dotfiles look like after being processed, check out the [https://github.com/harryob/dotfiles/tree/compiled](compiled output branch), which is more or less what all these files end up looking like (on a MacOS install, that is)

chezmoi allows us a one line install for the dotfiles, which is very neat. as part of the install process, we also install chezmoi, so we can cleanup this utility after its been used to bootstrap itself

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply harryob -P
```
# text editor 

i use [./dot_config/nvim](neovim) as my text editor, supplemented by vscode for some funny niche languages without a neovim lsp

# wezterm

i love this terminal editor more than anything - and it's got a very minimal config (once you've parsed how to make a config) - that lives [./dot_config/wezterm/wezterm.lua](here)

# theme

primarily nord - particularly the [https://github.com/EdenEast/nightfox.nvim](nightfox.nvim) nordfox for neovim
