<div align="center">

# ✨ **hyprstellar** ✨
a cozy dotfiles for your cozy workflow

![image](assets/header.png)

<p align="center">
  <img src="https://img.shields.io/github/last-commit/xeji01/hyprstellar">
  <img src="https://img.shields.io/github/stars/xeji01/hyprstellar?style=flat">
  <img src="https://img.shields.io/github/repo-size/xeji01/hyprstellar">
</p>

</div>

> [!WARNING]\
> Keep in mind that this is my daily driver.\
You might need to adjust some parts for your particular system, so please make sure to back up your configs first.\
Feel free to give this repo a star.

- [Software Used](#software-used)
- [Screenshots](#screenshots)
- [Hotkeys](#hotkeys)
- [TODO](#todo)

## Software Used

### Base

| Type               | Name                                                |
| ------------------ | --------------------------------------------------- |
| OS                 | [Arch Linux](https://archlinux.org/)                |
| Window Compositor  | [Hyprland](https://hyprland.org/)                   |
| Bar                | [Waybar](https://github.com/Alexays/Waybar)         |
| Terminal           | [Kitty](https://github.com/kovidgoyal/kitty)        |
| Shell              | zsh                                                 |
| ZSH Prompt         | [Starship](https://github.com/starship/starship)    |

### Input & UI

| Type                   | Name                                                                                               |
| ---------------------- | -------------------------------------------------------------------------------------------------- |
| Main Font              | [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)                                |
| Asian Font Collections | [Adobe Source Han Sans](https://archlinux.org/packages/extra/any/adobe-source-han-sans-otc-fonts/) |
| Emoji Font             | [Noto Emoji](https://github.com/googlefonts/noto-emoji)                                            |
| Emoji Selector         | [Rofi Emoji](https://github.com/Mange/rofi-emoji)                                                  | 
| Clipboard Manager      | [Cliphist](https://github.com/sentriz/cliphist)                                                    |
| Colorscheme            | [pywal16](https://github.com/eylles/pywal16)                                                       |

### Other

| Type                               | Name                                                                             |
| ---------------------------------- | -------------------------------------------------------------------------------- |
| Browser                            | [Librewolf](https://librewolf.net/)                                              |
| Browser CSS                        | [Fuji Fox](https://github.com/xeji01/fujifox) on my repo ⭐                      |
| Text Editor                        | [Neovim](https://neovim.io/)                                                     |
| Terminal File Manager              | [LF File Manager](https://github.com/gokcehan/lf)                                |
| Wallpaper Backend                  | [SWWW](https://github.com/LGFae/swww)                                            |
| Better ls                          | [Lsd](https://github.com/lsd-rs/lsd)                                             |
| Better cd                          | [Zoxide](https://github.com/ajeetdsouza/zoxide)                                  |
| AUR Helper                         | [Paru](https://github.com/Morganamilo/paru)                                      |
| App Launcher                       | [Rofi](https://github.com/davatorium/rofi)                                       |
| Screenshot Utility                 | [Hyprshot](https://github.com/Gustash/Hyprshot)                                  |
| System Info                        | [Fastfetch](https://github.com/fastfetch-cli/fastfetch)                          |
| Notification Daemon/Control Center | [Sway Notification Center](https://github.com/ErikReider/SwayNotificationCenter) |
| Lockscreen App                     | [Hyprlock](https://github.com/hyprwm/hyprlock)                                   |
| Idle Daemon                        | [Hypridle](https://github.com/hyprwm/hypridle)                                   |
| Power Menu App                     | [Wlogout](https://github.com/ArtsyMacaw/wlogout)                                 |
| WiFi Menu                          | [rofi-wifi-menu](https://github.com/ericmurphyxyz/rofi-wifi-menu)                |
| Screen Recorder                    | [wf-recorder](https://github.com/ammen99/wf-recorder)                            |

### Pywal themes for applications

| Type                  | Name                                                                                          |
| --------------------- | --------------------------------------------------------------------------------------------- |
| Librewolf Pywal Theme | [Pywalfox](https://addons.mozilla.org/ru/firefox/addon/pywalfox/)                             |

### Wallpapers

Check out my wallpapers [repository](https://github.com/xeji01/wallpaper)

## Screenshots

### Terminal

| Starship                                      |
| --------------------------------------------- |
| ![image](assets/starship.png)                 |

| LF File Manager                               |
| --------------------------------------------- |
| ![image](assets/yazi.png)                     |
| ![image](assets/yazi-maxprev.png)             |

| Fastfetch                                     |
| --------------------------------------------- |
| ![image](assets/fastfetch2.png)               |

### Waybar

| ![image](assets/waybar.gif)                   |
| --------------------------------------------- |

| V1 & V2                                       |
| --------------------------------------------- |
| ![image](assets/waybar-default-mode.png)      |
| ![image](assets/waybar-default-charging.png)  |
| ![image](assets/waybar-hearts-mode.png)       |
| ![image](assets/waybar-hearts-charging.png)   |

### Librewolf

![image](assets/librewolf.gif)

### Rofi
| Dmenu, Emoji, Wifi                                   |
| ---------------------------------------------------- |
| ![image](assets/rofi.png)                            |

| Clipboard                                            |
| ---------------------------------------------------- |
| ![image](assets/rofi-clipboard.png)                  |

### Wallpaper Selector

![image](assets/waypaper.png)

### Neovim

| Dashboard                                            |
| ---------------------------------------------------- |
| ![image](assets/nvim-alpha.png)                      |

| Layout                                               |
| ---------------------------------------------------- |
| ![image](assets/nvim-layout.png)                     |

| Telescope                                            |
| ---------------------------------------------------- |
| ![image](assets/nvim-telescope.png)                  |

### Wlogout

![image](assets/wlogout.gif)

### Hyprlock

![image](assets/hyprlock.gif)

### Sway Notification Center

| Notification Center                                  |
| ---------------------------------------------------- |
| ![image](assets/swaync.png)                          |

## Hotkeys

> [!NOTE]
> - `CapsLock` is used as `Esc`. You can change this behavior by removing `caps:escape` from the `~/.config/hypr/configs/input.conf`
> - On macOS, the `Super` key refers to the `Command` key.
> - On most other keyboards, `Super` refers to the `Windows` key.


| Key                                           | Command                              |
| --------------------------------------------- | ------------------------------------ |
| `Super` + `Enter`                             | Launch Kitty                         |
| `Super` + `B`                                 | Launch Librewolf                     |
| `Super` + `E`                                 | Launch LF File Manager               |
| `Super` + `L`                                 | Lockscreen                           |
| `Super` + `Q`                                 | Kill active window                   |
| `Super` + `W`                                 | Wifi Menu via Rofi                   |
| `Super` + `Shift` + `Enter`                   | Floating Kitty                       |
| `Super` + `Shift` + `B`                       | Launch wallpaper selector            |
| `Super` + `Shift` + `C`                       | Center window                        |
| `Super` + `Shift` + `E`                       | Exit Hyprland                        |
| `Super` + `Shift` + `F`                       | Toggle fullscreen                    |
| `Super` + `Shift` + `L`                       | Launch power menu                    |
| `Super` + `Shift` + `O`                       | Restart Waybar                       |
| `Super` + `Shift` + `R`                       | Restart Hyprland                     |
| `PrntScrn`                                    | Take screenshot of the entire screen |
| `Ctrl` + `PrntScrn`                           | Take screenshot of selected area     |
| `Ctrl` + `Shift` + `PrntScrn`                 | Take screenshot of selected window   | 
| `Ctrl` + `Super` + `Arrow down/up/left/right` | Resize window                        |

Other hotkeys can be found here `~/.config/hypr/configs/binds.conf`

## TODO
- [ ] bluetooth daemon
- [x] switch from yazi to lf
- [x] volume & brightness notification script
- [x] adding avatar to hyprlock
- [x] make a custom waybar
- [x] make a custom rofi
- [x] make a minimal Librewolf CSS

## Credits
Layout inspired by [vernette's](https://github.com/vernette/hyprsnap) dotfiles
