# claude-create-setup-token

A small script that runs `claude setup-token` to generate a long-lived Claude Code
authentication token for your subscription.

## Run it

```sh
bash <(curl -fsSL https://raw.githubusercontent.com/trillium/claude-create-setup-token/main/generate-setup-token.sh)
```

Requires Claude Code on your PATH. The script does not store the token. Copy it from the
output and keep it somewhere private, such as your shell profile or a password manager.

Or clone and run it locally:

```sh
./generate-setup-token.sh
```
