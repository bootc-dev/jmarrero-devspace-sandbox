# No bot dotfiles are installed yet. When they exist, pin and install them
# here, as bootc-dev/cgwalters-devspace-sandbox does with homegit.
init:
    #!/usr/bin/env bash
    set -euo pipefail
    umask 022
    # The Actions runner uses umask 000; keep the runner image's own
    # ~/.bash_profile and ~/.bash_logout from being world-writable.
    find "$HOME" -maxdepth 1 -name '.*' ! -type l -perm /go+w -exec chmod go-w {} +
