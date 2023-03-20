#!/usr/bin/env bash

set -euo pipefail

# install and setup nix-direnv
nix-env -f '<nixpkgs>' -iA nix-direnv
cat <<EOF >>$HOME/.direnvrc
source $HOME/.nix-profile/share/nix-direnv/direnvrc
EOF
