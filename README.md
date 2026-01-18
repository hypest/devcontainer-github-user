# Dev Container Templates & Features

This repository provides both **Templates** and **Features** for Dev Containers.

## Features

### Git Host Credentials
Installs Git and SSH client to enable seamless credential bridging from your host VS Code environment. Works with Alpine, Debian, Ubuntu, RHEL, Fedora, and Arch-based containers.

**Usage in any devcontainer.json:**
```json
{
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "features": {
    "ghcr.io/hypest/devcontainer-github-user/git-host-credentials:1": {}
  }
}
```

Or reference it by repository path:
```json
{
  "features": {
    "ghcr.io/hypest/devcontainer-github-user/git-host-credentials": {}
  }
}
```

## Templates

### Alpine Git User
A minimal Alpine environment pre-configured to use your host's Git and SSH credentials.

**Custom Template ID:** `ghcr.io/hypest/devcontainer-github-user/alpine-git-user`

## Publishing
This repository uses GitHub Actions to automatically publish templates and features to GitHub Container Registry (GHCR) on every push to `main`.
