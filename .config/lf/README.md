<div align="center">
<h1>COMFY LF</h1>
<p>Surfing in file manager has never been this easy.</p>
</div>

![image](assets/lf.gif)

## Features

 - Image Preview.
 - Progress indicator when copying/moving file(s).
 - Convert files with ease (jpg, png, gif, mp3, mp4, and mkv).
 - Simple shortcuts for faster navigation.
 - Easy rename and file sorting.
 - Archive and extract files.
 - Create files/directories.
 - Dedicated trash.
 - Copy file names with different options.
 - Fzf and ripgrep.
 - Instant chmod.
 - Modular configs for easy to read and edit the setting.

 > [!Note]\
 > Pasting file(s) will overwrite the file(s) with same file name and format in the target directory.

I guess there are some kinda conficts with the rsync commands.\
But for the moment, I leave it be for the sake of displaying progress bar.  

## Dependencies

Packages:

 - [kitty](https://github.com/kovidgoyal/kitty) for native image support.
 - [ctpv](https://github.com/NikitaIvanovV/ctpv) for image preview.
 - [ffmpegthumbnailer](https://github.com/dirkvdb/ffmpegthumbnailer) for video thumbnail.
 - [rsync](https://github.com/RsyncProject/rsync) to copy and move files.
 - [wl-clipboard](https://github.com/bugaevc/wl-clipboard) for clipboard backend.
 - [7zip](https://archlinux.org/packages/extra/x86_64/7zip) to handle zip files.
 - [atool](https://www.nongnu.org/atool/) for archive preview.
 - [jq](https://github.com/jqlang/jq) for JSON preview.
 - [ffmpeg](https://github.com/FFmpeg/FFmpeg) to convert files.
 - [exiftool](https://github.com/exiftool/exiftool) for metadata information.
 - [udiskie](https://github.com/coldfix/udiskie) to mount usb devices.
 - [mpv](https://github.com/mpv-player/mpv) to display video.
 - [fzf](https://github.com/junegunn/fzf) to fuzzy find files.
 - [fd](https://github.com/sharkdp/fd) for better find.
 - [bat](https://github.com/sharkdp/bat) for syntax highlighting.
 - [zoxide](https://github.com/ajeetdsouza/zoxide) to autojump between directories.

Don't forget to copy the ctpv [config](https://github.com/xeji01/hyprstellar/blob/main/.config/ctpv/config) to your `~/.config/ctpv`.

## Keybindings

| Key | Command |
| --- | --- |
| `.` | Show / hide hidden file 
| `esc` | Clear / cancel 
| `e` | Open with $EDITOR
| `o` | Open with mpv
| `f` | Filter
| `i` | Invert
| `rr` | Rename before extension
| `rb`| Rename after extension 
| `y` | Copy
| `x` | Cut
| `d` | Trash
| `D` | Delete

| Key | Command |
| --- | --- |
| `af` | Make file
| `ad` | Make directory
| `as` | Make directory from selections
| `cs` | Calculate size of directory
| `az` | Create zipfile
| `ae` | Extract archive
| `vp` | Convert to png
| `vj` | Convert to jpg
| `gc` | cd ~/.config
| `gd` | cd ~/Downloads
| `gh` | cd ~
| `gt` | cd ~/.trash
| `cm` | chmodx

> [!NOTE]\
> I suggest you to learn some of lf's [default keymaps](https://github.com/gokcehan/lf/blob/master/doc.md) first. The rest of mine can be found here `~/.config/lf/configs/keymaps`. 



 ## To Do
 - [ ] paste options: ask if files should be overwritten or not.
 - [x] display video thumbnail. (solved by using ctpv).
 

## Credit
This LF config was based from Cafreo's [dotfiles](https://github.com/cafreo/hyprland-intergalactic).
