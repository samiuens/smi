{ lib, pkgs, ... }:
{
  config = lib.mkIf pkgs.stdenv.isLinux {
    smi.desktop.noctalia.settings =
      import ./bar.nix
      // import ./dock.nix
      // import ./wallpaper.nix
      // import ./appearance.nix
      // import ./notifications.nix
      // import ./panels.nix
      // import ./system.nix;
  };
}
