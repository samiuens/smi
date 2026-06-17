{ pkgs, ... }:
{
  # macOS installs these to "/Library/Fonts/Nix Fonts".
  fonts.packages = (import ../fonts.nix pkgs).shared;
}
