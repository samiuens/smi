# List available recipes
default:
    @just --list

# Update flake inputs and commit the result
update:
    nix flake update
    git add flake.lock
    git diff --cached --quiet || git commit -m "⬆️ chore(flake): update inputs"
