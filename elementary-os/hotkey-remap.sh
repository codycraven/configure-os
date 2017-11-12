gsettings set org.pantheon.desktop.gala.keybindings expose-windows "['']"
gsettings set org.pantheon.desktop.gala.keybindings expose-all-windows "['']"
gsettings set org.pantheon.desktop.gala.keybindings cycle-workspaces-next "['']"
gsettings set org.pantheon.desktop.gala.keybindings cycle-workspaces-previous "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['']"
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Control><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Alt>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "['<Shift><Alt>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super><Shift>Tab']"

# Symlink autokey directory
AUTOKEY_DIR="$HOME/.config/autokey/data/Mac Bindings"
rm -fr "$AUTOKEY_DIR"
ln -s `pwd`/autokey/mac-bindings/ "$AUTOKEY_DIR"

