{ pkgs, ... }:
{
  smi = {
    host.name = "smi-mac";
    locale.timeZone = "Europe/Berlin";
    users.stateVersion = "26.05";
    homebrew.enable = true;
  };

  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 5;

  environment.systemPackages = [ pkgs.coreutils ];
}
