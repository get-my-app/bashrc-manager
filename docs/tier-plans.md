# BashRC Manager Tier Plans

## Free

- Public `.bashrc.d` loader with safe backup of the existing `.bashrc`.
- Module layout: `main.sh`, `enabled/`, `disabled/`.
- Add/list/disable shell modules with `bash -n` validation.
- Ubuntu-first setup, plus public notes for WSL and future Termux usage.

## Plus

- Private profile presets: work, personal, server, devops.
- Cross-device sync design and conflict handling.
- Rollback history, module templates, and richer validation reports.
- Private implementation lives in `bashrc-manager-plus-pro`.

## Pro

- AI-assisted shell module generation with policy checks.
- Remote fleet bootstrap, audit logs, approval gates, and governed automation.
- Human approval before applying risky shell mutations or remote changes.
- Private governance implementation lives in `bashrc-manager-plus-pro`.

## Repository Split

- `bashrc-manager`: public Free tier only.
- `bashrc-manager-plus-pro`: private Plus and Pro development.
