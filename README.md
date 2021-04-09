# Dot-files

## Colorscheme & pywal

Install ``npm``. Then ``npm install --save nord``. Install ``pip3`` by ``apt install python3-pip``. Then install pywal ``pip3 install pywal``. Install ``compton`` with ``apt install compton`` for adjusting opacity of windows.

## xbindkeys

Install ``apt install xbindkeys``. ``xbindkeysrc`` is the config file. Place it in ``/home/sourav``

## vim 

Install ``vim-plug``, using ``sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'``. Start vim and install plugins with ``:PlugInstall``.
       
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

Install with ``apt install ranger``. Then ``mkdir ~/.config/ranger`` and copy the contents of the ``ranger`` folder there. Install ``ubeerzug`` for previewing images with ``pip3 install ueberzug``. In ``.comfig/ranger/`` create an executable with ``chmod +x scope.sh``.

## dwm and alacritty
 ``sudo add-apt-repository ppa:aslatter/ppa`` and ``sudo apt install alacritty``

``dwm``:``make`` and ``sudo make clean install``

## slstatus (LEGACY)

Install ``awesome-fonts``. Then ``make`` and ``sudo make clean install``.

## dwmblocks

Install `awesome-fonts`.

## Battery Notification

Run ``chmod +rx battery_notification.sh`` to create the executable. Install dunst (``apt install dunst``) and copy dunstrc to ``/.config/dunst/``. Open ``crontab -e`` and add ``* * * * * export DISPLAY=:0.0 && bash -c /home/sourav/battery_notification.sh``. Leave a newline after entry into ``crontab``

## Earphone no sound issue

See solution [here](https://askubuntu.com/questions/1272908/ubuntu-20-04-headphones-detected-but-no-sound).

## Firefox Settings

See [here](https://www.privacytools.io/browsers/#about_config). Use the ``CookiesAutoDeleteSettings.json`` for ``CookiesAutoDelete``.
