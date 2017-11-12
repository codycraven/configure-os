# Symlink guake directory
GUAKE_DIR="$HOME/.gconf/apps/guake"
rm -fr "$GUAKE_DIR"
ln -s `pwd`/guake/ "$GUAKE_DIR"

