{ inputs, pkgs, ... }:
{
  smi = {
    host.name = "smi-mac";
    locale.timeZone = "Europe/Berlin";
    users = {
      stateVersion = "26.05";
      extraUsers = { inherit (inputs.samiarda.lib.userRegistry) fittedgroup; };
    };
  };

  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 5;

  environment.systemPackages = [ pkgs.coreutils ];
}
