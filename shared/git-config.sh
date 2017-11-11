DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

DETECTED_NAME=$( \
  git config --global user.name || \
  $(getent passwd "$USER" | cut -d : -f 5 | cut -d , -f 1) \
)

DETECTED_EMAIL=$(git config --global user.email || "")

read -e -p "Your name for Git: " -i "$DETECTED_NAME" NAME
git config --global user.name "$NAME"

read -e -p "Your email for Git: " -i "$DETECTED_EMAIL" EMAIL
git config --global user.email "$EMAIL"

EMAIL="$EMAIL" exec "$DIR/ssh-config.sh"
