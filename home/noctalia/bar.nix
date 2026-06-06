{
  bar = {
    barType = "floating";
    position = "top";
    monitors = [ ];
    density = "spacious";
    showOutline = false;
    showCapsule = true;
    capsuleOpacity = 1;
    capsuleColorKey = "none";
    widgetSpacing = 6;
    contentPadding = 2;
    fontScale = 1;
    enableExclusionZoneInset = true;
    backgroundOpacity = 0.93;
    useSeparateOpacity = false;
    marginVertical = 4;
    marginHorizontal = 12;
    frameThickness = 8;
    frameRadius = 12;
    outerCorners = true;
    hideOnOverview = false;
    displayMode = "auto_hide";
    autoHideDelay = 500;
    autoShowDelay = 150;
    showOnWorkspaceSwitch = false;
    widgets = {
      left = [
        {
          characterCount = 2;
          colorizeIcons = false;
          emptyColor = "primary";
          enableScrollWheel = true;
          focusedColor = "tertiary";
          followFocusedScreen = false;
          fontWeight = "medium";
          groupedBorderOpacity = 1;
          hideUnoccupied = false;
          iconScale = 0.8;
          id = "Workspace";
          labelMode = "index";
          occupiedColor = "none";
          pillSize = 0.7;
          showApplications = false;
          showApplicationsHover = false;
          showBadge = false;
          showLabelsOnlyWhenOccupied = true;
          unfocusedIconsOpacity = 1;
        }
      ];
      center = [
        {
          compactMode = false;
          hideMode = "hidden";
          hideWhenIdle = false;
          id = "MediaMini";
          maxWidth = 145;
          panelShowAlbumArt = true;
          scrollingMode = "hover";
          showAlbumArt = true;
          showArtistFirst = true;
          showProgressRing = true;
          showVisualizer = false;
          textColor = "none";
          useFixedWidth = false;
          visualizerType = "linear";
        }
        {
          defaultSettings = {
            activeColor = "primary";
            camFilterRegex = "";
            enableToast = true;
            hideInactive = false;
            iconSpacing = 4;
            inactiveColor = "none";
            micFilterRegex = "";
            removeMargins = false;
          };
          id = "plugin:privacy-indicator";
        }
        {
          clockColor = "none";
          formatHorizontal = "HH:mm ddd, MMM dd";
          formatVertical = "HH mm - dd MM";
          id = "Clock";
          tooltipFormat = "HH:mm ddd, MMM dd";
          useCustomFont = false;
        }
      ];
      right = [
        {
          defaultSettings = {
            colorHistory = [ ];
            detectedRecorder = "";
            filenameFormat = "";
            gifMaxSeconds = 30;
            installedLangs = [ "eng" ];
            paletteColors = [ ];
            recordCopyToClipboard = false;
            recordSkipConfirmation = false;
            screenshotPath = "";
            selectedOcrLang = "eng";
            transAvailable = false;
            videoPath = "";
          };
          id = "plugin:screen-toolkit";
        }
        {
          displayMode = "onhover";
          iconColor = "none";
          id = "Volume";
          middleClickCommand = "pwvucontrol || pavucontrol";
          textColor = "none";
        }
        {
          colorizeDistroLogo = false;
          colorizeSystemIcon = "none";
          colorizeSystemText = "none";
          enableColorization = false;
          icon = "settings";
          id = "ControlCenter";
          useDistroLogo = false;
        }
      ];
    };
    mouseWheelAction = "none";
    reverseScroll = false;
    mouseWheelWrap = true;
    middleClickAction = "none";
    middleClickFollowMouse = false;
    rightClickAction = "controlCenter";
    rightClickFollowMouse = true;
    screenOverrides = [ ];
  };
}
