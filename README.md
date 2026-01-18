# Dev Container Features

A collection of reusable Dev Container Features.

## Available Features

### Git Credential Bridge

Automatically bridges your host's Git and SSH credentials into the container. Your GitHub user logged in VS Code becomes your git user - push, pull, and clone without reconfiguring.

**Feature ID:** `ghcr.io/hypest/devcontainer-features/git-host-credentials:1`

**Supported OS:** Alpine, Debian, Ubuntu, RHEL, Fedora, Arch

**Usage:**

Add to your `devcontainer.json`:

```json
{
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "features": {
    "ghcr.io/hypest/devcontainer-features/git-host-credentials:1": {}
  }
}
```

Then rebuild your container.
