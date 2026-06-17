# List available recipes
default:
    @just --list

# Update flake inputs and commit the result
update:
    nix flake update
    git add flake.lock
    git diff --cached --quiet || git commit -m "⬆️ chore(flake): update inputs"

# Rebuild the current host against the locked `nix` flake input
[macos]
rebuild:
    sudo darwin-rebuild switch --flake .#smi-mac

[linux]
rebuild:
    NH_FLAKE={{justfile_directory()}} nh os switch

# Rebuild the current host against the local flake working copy
[macos]
rebuild-local:
    sudo darwin-rebuild switch --flake .#smi-mac --override-input nix path:../flake

[linux]
rebuild-local:
    NH_FLAKE={{justfile_directory()}} nh os switch -- --override-input nix path:../flake
