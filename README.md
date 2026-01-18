# Minimal Alpine Dev Container Template

This repository is structured as a **Dev Container Template Collection**.

## Templates included:
- **Alpine Git User**: A minimal Alpine environment pre-configured to use your host's Git and SSH credentials.

## How to use this as a GitHub Template
1. Go to this repository's **Settings**.
2. Check the **Template repository** box.
3. Now you can click **Use this template** to start new projects with this configuration.

## How to use via Dev Container CLI / VS Code
To make this searchable in the VS Code "Add Dev Container Configuration" menu without the complexity of the official community index, you can push a release to your own GitHub Container Registry (GHCR).

### Manual Setup
If you want to use this in an existing project:
1. Copy the contents of `src/alpine-git-user/.devcontainer` into your project's root `.devcontainer` folder.
2. Replace `${templateOption:alpineVersion}` with `latest` in `devcontainer.json`.
