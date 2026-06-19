{
  platforms = [ "darwin" ];
  module = _: {
    targets.darwin.defaults = {
      NSGlobalDomain = {
        AppleInterfaceStyle = "Dark";
        #AppleInterfaceStyleSwitchesAutomatically = true;
        #AppleReduceDesktopTinting = false;
        AppleKeyboardUIMode = 3;
        KeyRepeat = 2;
        InitialKeyRepeat = 15;
        NSNavPanelExpandedStateForSaveMode = true;
        NSNavPanelExpandedStateForSaveMode2 = true;
        NSWindowShouldDragOnGesture = true;
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticSpellingCorrectionEnabled = false;
        NSAutomaticQuoteSubstitutionEnabled = false;
        NSAutomaticPeriodSubstitutionEnabled = false;
      };

      "com.apple.dock" = {
        autohide = true;
        autohide-delay = 0.0;
        tilesize = 28;
        minimize-to-application = true;
        orientation = "bottom";
        expose-group-apps = true;
        mru-spaces = false;
        wvous-bl-corner = 1;
        wvous-br-corner = 1;
        wvous-tl-corner = 1;
        wvous-tr-corner = 1;
      };

      "com.apple.finder" = {
        _FXSortFoldersFirst = true;
        FXDefaultSearchScope = "SCcf";
        FXPreferredViewStyle = "clmv";
        ShowPathbar = true;
      };

      "com.apple.WindowManager" = {
        EnableStandardClickToShowDesktop = false;
        EnableTiledWindowMargins = false;
        EnableTilingByEdgeDrag = false;
        StageManagerHideWidgets = false;
        StandardHideWidgets = false;
      };
    };
  };
}
