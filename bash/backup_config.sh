#!/bin/bash

# Function that copy my current bashrc into my ExternalDrive. (/mnt/ExternalHDD/my/dotconfig/bash/here)
backup_bashrc() {
  #  Checkif manjaro-bashrc is exist on dotconfig
  #   - If exist, remove the old one
  #     > cp new bashrc from $HOME directory to dotconfig
  #   - else, cp new bashrc from $HOME directory to dotconfig

  push_to_github() {
    echo "Preparing to push on github."
    my
    cd dotconfig

    git add bash/.manjaro-bashrc
    read -p 'Commit message: ' message
    git commit -m "$message"

    echo "Starting to push on github."
    git push
    echo "Succesfully pushed on github."
    cd
  }

  update_bashrc() {
    echo "Starting to update .manjaro-bashrc"
    cp $HOME/.bashrc /mnt/ExternalHDD/my/dotconfig/bash/.manjaro-bashrc
    echo "Updated .manjaro-bashrc complete!"

    push_to_github
  }

  if [[ -f /mnt/ExternalHDD/my/dotconfig/bash/.manjaro-bashrc ]]; then
    echo "Exist, starting to remove old .manjaro-bashrc"
    rm /mnt/ExternalHDD/my/dotconfig/bash/.manjaro-bashrc
    echo "Deleted .manjaro-bashrc"

    update_bashrc
  else
    echo ".manjaro-bashrc does not exist."
    update_bashrc
  fi
}
