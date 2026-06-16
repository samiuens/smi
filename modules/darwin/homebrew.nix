{
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
    ];
    masApps = {
      "Xcode" = 497799835;
    };
  };
}
