confirm() {
  read -r -p "${1:-Are you sure? [y/N]} " response
  case "$response" in
    [yY][eE][sS]|[yY])
      true ;;
    *)
      false ;;
  esac
}

SSH_KEYFILE="$HOME/.ssh/id_rsa"

if [[ -f "$SSH_KEYFILE" ]]; then
  confirm "You already appear to have an SSH key ($SSH_KEYFILE), would you like to replace it?" && \
  rm -f ~/.ssh/id_rsa || exit
fi


if [[ -z "$EMAIL" ]]; then
  read -e -p "Your email for SSH key: " EMAIL
fi

ssh-keygen -q -t rsa -b 4096 -C "$EMAIL" -f "$SSH_KEYFILE"

echo "New private key generated, be sure to upload $SSH_KEYFILE.pub wherever needed"

