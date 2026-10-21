# claude-create-setup-token

A small script that runs `claude setup-token` to generate a long-lived Claude Code
authentication token for your subscription.

## Run it

```sh
bash <(curl -fsSL https://raw.githubusercontent.com/trillium/claude-create-setup-token/main/generate-setup-token.sh)
```

What that command does, step by step:

```sh
# curl -fsSL <url>
#   Downloads the script from GitHub. -f fails on HTTP errors, -s hides progress,
#   -S still shows errors, and -L follows redirects.
# <( ... )
#   Passes the downloaded script to bash as a file, not through a pipe. This keeps
#   stdin attached to your terminal so the interactive sign-in works.
# bash <file>
#   Runs the script. It checks that `claude` is on your PATH, runs
#   `claude setup-token`, and prints the next step for storing the token.
```

Requires Claude Code on your PATH. The script does not store the token. Copy it from the
output and keep it somewhere private, such as your shell profile or a password manager.

Or clone and run it locally:

```sh
./generate-setup-token.sh
```
