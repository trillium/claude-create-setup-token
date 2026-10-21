# claude-create-setup-token

A small script that runs `claude setup-token` to generate a long-lived Claude Code
authentication token for your subscription.

## Run it

1. Open the Terminal app: click the Finder icon (the blue face) in the Dock, click `Applications` in the left column, open the `Utilities` folder, and double-click `Terminal`.
2. Copy the command in the box below.
3. Click in the Terminal window, paste the command with `Command` + `V`, and press `Enter`.
4. Follow the prompts to sign in to Claude.
5. Copy the token that Terminal prints and keep it somewhere private.

```sh
# Downloads the script from GitHub and runs it in one step.
#   curl -fsSL   fetch the script; -f fails on HTTP errors, -s hides progress,
#                -S still shows errors, -L follows redirects.
#   <( ... )     hand the script to bash as a file rather than a pipe, so stdin
#                stays on your terminal and the sign-in prompt works.
#   bash         checks that `claude` is on your PATH, runs `claude setup-token`,
#                then prints where to store the token.
bash <(curl -fsSL https://raw.githubusercontent.com/trillium/claude-create-setup-token/main/generate-setup-token.sh)
```

Requires Claude Code on your PATH. The script does not store the token. Copy it from the
output and keep it somewhere private, such as your shell profile or a password manager.

Or clone and run it locally:

```sh
./generate-setup-token.sh
```
