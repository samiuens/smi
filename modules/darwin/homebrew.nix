{ inputs, ... }:
{
  imports = [ inputs.nix-homebrew.darwinModules.nix-homebrew ];

  nix-homebrew = {
    enable = true;
    enableRosetta = true; # für Intel-Casks auf Apple Silicon
    user = "smi";
    autoMigrate = true; # falls Homebrew schon installiert ist
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
      "linearmouse"
      "orbstack"
      "bambu-studio"
      "localsend"
    ];
    masApps = {
      "Xcode" = 497799835;
    };
  };
}
