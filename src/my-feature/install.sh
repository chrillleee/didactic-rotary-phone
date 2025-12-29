#!/bin/bash
set -euxo pipefail


VERSION="${VERSION:-"latest"}"

echo "Installing my-feature version ${VERSION}..."

echo "Installing Fish shell..."
# Update package lists
apt-get update -qq
# Install Fish shell
apt-get install -y fish
chsh -s /usr/bin/fish vscode || true