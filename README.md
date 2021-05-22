# Neo’s dotfiles
![screenshot for osx](https://raw.githubusercontent.com/NeoHsu/dotfiles/master/screenshot/osx_dotfile.png)
## Installation
> **Warning: the dotfiles only for macOS** 
### Prerequisites
Make sure your software is up to date:

```shell
sudo softwareupdate -i -a --restart
```

Install Apple's command line tools:
```shell
xcode-select --install
```
Reboot, check for additional updates, then reinstall and reboot as needed.
### Using Git

```shell
git clone --recursive https://github.com/NeoHsu/dotfiles.git ~/.dotfiles
```

### Using dotbot to set dotfile's links

```shell
cd ~/.dotfiles
chmod -x install
./install
```
