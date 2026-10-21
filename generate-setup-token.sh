#!/usr/bin/env bash
# Generate a long-lived Claude Code setup token for the current subscription.
# Runs `claude setup-token` interactively. The token is printed by Claude Code
# and is not written to any file by this script.
set -euo pipefail

if ! command -v claude >/dev/null 2>&1; then
  echo "claude is not on PATH. Install Claude Code first." >&2
  exit 1
fi

echo "Starting 'claude setup-token'. Sign in if prompted, then copy the token it prints."
claude setup-token

cat <<'MSG'

Next step: store the token where your tools read it, for example:
  export CLAUDE_CODE_OAUTH_TOKEN='<paste token>'
Do not commit the token or paste it into a shared file.
MSG
