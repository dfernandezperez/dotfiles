# github.com/dfernandezperez/dotfiles

dotfiles, managed with [`chezmoi`](https://github.com/twpayne/chezmoi).

## Install

Prerequisite: zsh, zplug, autojump, chezmoi

```shell
# Install zplug (zsh required): https://github.com/zplug/zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# Install autojump
git clone https://github.com/wting/autojump.git
cd autojump
./install.py
cd ..
rm -r autojump

# Install chezmoi (remember add to path)
sh -c "$(curl -fsLS get.chezmoi.io)"

# Run chezmoi and install dotfiles
chezmoi init --apply https://github.com/dfernandezperez/dotfiles.git
```
