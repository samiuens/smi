{ inputs, config, ... }:
{
  imports = [ inputs.nix-homebrew.darwinModules.nix-homebrew ];

  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = config.system.primaryUser;
    autoMigrate = true;
  };

  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = false;
      upgrade = true;
      cleanup = "zap";
    };
    taps = [ ];
    brews = [ "mas" ];
    casks = [
      "ghostty"
      "linearmouse"
      "orbstack"
      "bambu-studio"
      "keka"
      "pearcleaner"
      "localsend"
      "little-snitch"
    ];
    masApps = {
      "Xcode" = 497799835;
    };
  };
}
