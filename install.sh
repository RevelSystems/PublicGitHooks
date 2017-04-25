#!/bin/sh -e

test -e $(git rev-parse --git-dir)/hooks/commit-msg && {
    echo "Install aborted. File $(git rev-parse --git-dir)/hooks/commit-msg exists. Please rename it to commit-msg-my (to keep it working) or remove. Than run this installation again"
    exit 1
}

curl -f -o $(git rev-parse --git-dir)/hooks/commit-msg       https://raw.githubusercontent.com/RevelSystems/PublicGitHooks/master/commit-msg
curl -f -o $(git rev-parse --git-dir)/hooks/commit-msg-revel https://raw.githubusercontent.com/RevelSystems/PublicGitHooks/master/commit-msg-revel
chmod +x $(git rev-parse --git-dir)/hooks/commit-msg
chmod +x $(git rev-parse --git-dir)/hooks/commit-msg-revel

