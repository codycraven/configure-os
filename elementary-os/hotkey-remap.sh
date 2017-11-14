gsettings set org.pantheon.desktop.gala.keybindings expose-windows "['']"
gsettings set org.pantheon.desktop.gala.keybindings expose-all-windows "['']"
gsettings set org.pantheon.desktop.gala.keybindings cycle-workspaces-next "['']"
gsettings set org.pantheon.desktop.gala.keybindings cycle-workspaces-previous "['']"

gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Control><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d', '<Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "['<Shift><Super>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super><Shift>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Alt>Left']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super><Alt>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Super><Alt>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Super><Alt>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Super><Alt>4']"

gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['']"
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot-clip "['<Control><Shift><Super>3']"
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot "['<Shift><Super>3']"
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot-clip "['<Control><Shift><Super>4']"
gsettings set org.gnome.settings-daemon.plugins.media-keys area-screenshot "['<Shift><Super>4']"

# Symlink autokey directory
AUTOKEY_DIR="$HOME/.config/autokey/data/Mac Bindings"
rm -fr "$AUTOKEY_DIR"
ln -s `pwd`/autokey/mac-bindings/ "$AUTOKEY_DIR"

