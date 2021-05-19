# Dot-files

## Colorscheme & pywal

Install ``npm``. Then ``npm install --save nord``. Install ``pip3`` by ``apt install python3-pip``. Then install pywal ``pip3 install pywal``. Install ``compton`` with ``apt install compton`` for adjusting opacity of windows.

## xbindkeys

Install ``apt install xbindkeys``. ``xbindkeysrc`` is the config file. Place it in ``/home/sourav``

## vim 

Install ``vim-plug``, using ``sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'``. Start vim and install plugins with `:PlugInstall`. Install `vim-gtk` to enable copying to clipboard from mouse.
       
## bright.sh

Add bright.sh to enable brightness function. Copy the 'bright.sh' script into /etc/acpi and create event entries under /etc/acpi/events like so:

/etc/acpi/events/brightness-up-support:
```
   event=video[ /]brightnessup
   action=/etc/acpi/bright.sh "up"
```
/etc/acpi/events/brightness-down-support:
```
   event=video[ /]brightnessdown
   action=/etc/acpi/bright.sh "down"
```
## ranger

Install with `apt install ranger`. Then `mkdir ~/.config/ranger` and copy the contents of the `ranger` folder there. Install `ueberzug` for previewing images with `pip3 install ueberzug`. In `.config/ranger/` create an executable with `chmod +x scope.sh`.

## zathura

Install `zathura-djvu` from apt for djvu compatibility.

## dwm and alacritty
 ``sudo add-apt-repository ppa:aslatter/ppa`` and ``sudo apt install alacritty``

``dwm``:``make`` and ``sudo make clean install``. Edit config.def.h to update.

## slstatus (LEGACY)

Install ``awesome-fonts``. Then ``make`` and ``sudo make clean install``.

## dwmblocks

Install `awesome-fonts`. Edit config.h to update.

## distraction_blocker

Install `brotab` with `pip3 install bt` and run `bt install`. Install the firefox extension for the same from [here](https://addons.mozilla.org/en-US/firefox/addon/brotab/). Add the list of sites to block to `list.txt`. `bt` errors happen due to closing a tab which doesn't exist, this can be resolved by disabling and enabling the firefox extension.

## Earphone no sound issue

See solution [here](https://askubuntu.com/questions/1272908/ubuntu-20-04-headphones-detected-but-no-sound).

## Firefox Settings

See [here](https://www.privacytools.io/browsers/#about_config). Use the ``CookiesAutoDeleteSettings.json`` for ``CookiesAutoDelete``.

## ticker.sh

`ticker.sh` is a yahoo finance api script by [pstadler](https://github.com/pstadler/ticker.sh). This requires `jq`, install it using `apt install jq`. I use this in the nifty.sh script in dwmblocks/blocks.
