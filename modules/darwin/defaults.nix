{
  system.defaults = {
    NSGlobalDomain = {
      #AppleInterfaceStyle = "Dark";
      AppleInterfaceStyleSwitchesAutomatically = true;
      #AppleReduceDesktopTinting = false;
      AppleKeyboardUIMode = 2;
      KeyRepeat = 2;
      InitialKeyRepeat = 15;
      NSNavPanelExpandedStateForSaveMode = true;
      NSNavPanelExpandedStateForSaveMode2 = true;
      NSWindowShouldDragOnGesture = true; # Moving window by holding anywhere
      # Spelling correction
      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticSpellingCorrectionEnabled = false;
      NSAutomaticQuoteSubstitutionEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
    };

    dock = {
      autohide = true;
      autohide-delay = 0.0;
      tilesize = 28;
      minimize-to-application = true;
      orientation = "bottom";
      persistent-apps = [ ];
      persistent-others = [ ];
      expose-group-apps = true;

      # Disable space rearragment based on recent usage
      mru-spaces = false;

      # Disable hot corners
      wvous-bl-corner = 1;
      wvous-br-corner = 1;
      wvous-tl-corner = 1;
      wvous-tr-corner = 1;
    };

    finder = {
      _FXSortFoldersFirst = true; # Show folders first in list
      FXDefaultSearchScope = "SCcf"; # Start search in current folder
      FXPreferredViewStyle = "clmv"; # Column View
      ShowPathbar = true;
    };

    WindowManager = {
      EnableStandardClickToShowDesktop = false;
      EnableTiledWindowMargins = false;
      EnableTilingByEdgeDrag = false;
      StageManagerHideWidgets = false;
      StandardHideWidgets = false;
    };

    loginwindow.GuestEnabled = false;
  };
}
