# BashRC Manager — Product Spec

## Goal

Create a scalable manager for shell functions and aliases stored in `.bashrc.d`. The user’s `.bashrc` loads all `.sh` files from `.bashrc.d`; its original content is copied to `.bashrc.d/main.sh` during installation.

## Target platforms

- Ubuntu first.
- Windows via WSL bootstrap.
- Future Android via Termux, possibly installed/controlled by a React Native mobile app.

## Core features

### Free

- Install `.bashrc.d` structure.
- Backup existing `.bashrc`.
- Move current `.bashrc` content into `.bashrc.d/main.sh`.
- Generate new `.bashrc` loader.
- Add/list/edit/disable shell modules.
- Validate `.sh` files with `bash -n`.

### Plus

- Profiles: work, personal, server, devops.
- Sync modules via Git.
- Import/export module packs.
- Cross-device bootstrap scripts.

### Pro

- AI-assisted module generation.
- Policy checks before applying shell changes.
- Remote fleet bootstrap.
- Human-approved automation.

## Scaling model

Modules are stored as files:

```text
~/.bashrc.d/
  main.sh
  aliases.sh
  docker.sh
  git.sh
  node.sh
  python.sh
  enabled/
  disabled/
```

## Install flow

1. Detect OS.
2. On Ubuntu: install directly.
3. On Windows: check WSL, guide/install Ubuntu distribution, then run Linux installer inside WSL.
4. On Android future path: install/use Termux environment and apply same module structure.

## Safety

- Always backup `.bashrc`.
- Never delete without backup.
- Validate before applying.
- Provide rollback command.
