# dotfiles

## TODO

- [x] Customize d-menu / drun
- [x] Get polybar system tray working
- [ ] Clipboard history
- [ ] Sync gtk theme with wal (if possible)
- [ ] polybar network manager drop down menu

## .config

```bash
mkdir -p ~/.config
cd ~/.config
git init
git remote add origin https://github.com/mcquenji/dotfiles.git
git fetch
git checkout origin/master -ft
```

## .zshrc

```bash
cp ~/.config/.zshrc ~/.zshrc -f
```

## Requirements

```bash
sudo pacman -S i3-wm alacritty polybar feh ttf-font-awesome breeze-icons sxiv vlc zsh picom xclip thunar tumbler ttf-cascadia-code python-pywal
```

- [i3-wm](https://archlinux.org/packages/extra/x86_64/i3-wm/)
- [alacritty](https://archlinux.org/packages/extra/x86_64/alacritty)
- [polybar](https://archlinux.org/packages/extra/x86_64/polybar/)
- [feh](https://archlinux.org/packages/extra/x86_64/feh/)
- [ttf-font-awesome](https://archlinux.org/packages/extra/any/ttf-font-awesome/)
- [breeze-icons](https://archlinux.org/packages/extra/any/breeze-icons/)
- [sxiv](https://archlinux.org/packages/extra/x86_64/sxiv/)
- [vlc](https://archlinux.org/packages/extra/x86_64/vlc/)
- [zsh](https://archlinux.org/packages/extra/x86_64/zsh/)
- [picom](https://archlinux.org/packages/extra/x86_64/picom/)
- [xclip](https://archlinux.org/packages/extra/x86_64/xclip/)
- [thunar](https://archlinux.org/packages/extra/x86_64/thunar/)
- [tumbler](https://archlinux.org/packages/extra/x86_64/tummbler/)
- [ttf-cascadia-code](https://archlinux.org/packages/extra/any/ttf-cascadia-code/)
- [python-pywal](https://archlinux.org/packages/extra/any/python-pywal/)

### AUR

```bash
yay -S google-chrome betterlockscreen
```

- [google-chrome](https://aur.archlinux.org/packages/google-chrome)
- [betterlockscreen](https://aur.archlinux.org/packages/betterlockscreen/)

### oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
```

- [oh-my-zsh](https://ohmyz.sh/)
- [autosuggesions plugin](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting plugin](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-fast-syntax-highlighting plugin](https://github.com/zdharma-continuum/fast-syntax-highlighting)

## Additional Packages

```bash
sudo pacman -S neovim man-db tldr sof-firmware ranger
```

- [sof-firmware](https://archlinux.org/packages/extra/x86_64/sof-firmware/)
- [man-db](https://archlinux.org/packages/core/x86_64/man-db/)
- [tldr](https://archlinux.org/packages/extra/x86_64/tldr/)
- [neovim](https://archlinux.org/packages/extra/x86_64/neovim/)
- [ranger](https://archlinux.org/packages/extra/any/ranger/)
