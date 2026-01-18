#!/bin/sh
set -e

echo "Installing Git and OpenSSH client for credential bridging..."

# Detect package manager and install accordingly
if command -v apk > /dev/null 2>&1; then
    # Alpine
    apk add --no-cache git openssh-client
elif command -v apt-get > /dev/null 2>&1; then
    # Debian/Ubuntu
    apt-get update && apt-get install -y git openssh-client
elif command -v yum > /dev/null 2>&1; then
    # RHEL/CentOS
    yum install -y git openssh-clients
elif command -v dnf > /dev/null 2>&1; then
    # Fedora
    dnf install -y git openssh-clients
elif command -v pacman > /dev/null 2>&1; then
    # Arch
    pacman -Sy --noconfirm git openssh
else
    echo "Warning: Could not detect package manager. Git and SSH may need to be installed manually."
    exit 1
fi

echo "Git and SSH client installed successfully!"
echo "VS Code will now be able to bridge your host credentials automatically."
