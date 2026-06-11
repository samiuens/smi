{ pkgs, ... }:
{
  smi = {
    host.name = "smi-mac";
    locale.timeZone = "Europe/Berlin";
    users.stateVersion = "26.05";
    nh = {
      enable = true;
      flakeDir = "/Users/smi/Entwicklung/nix/nixos";
    };
    homebrew = {
      enable = true;
      casks = [ "bambu-studio" ];
      brews = [ "mas" ];
      masApps = {
        "Xcode" = 497799835;
      };
    };
  };

  nixpkgs.hostPlatform = "aarch64-darwin";
  system.stateVersion = 5;

  environment.systemPackages = [ pkgs.coreutils ];
}
