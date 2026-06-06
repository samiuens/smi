{
  general = {
    avatarImage = "/home/smi/.face";
    dimmerOpacity = 0.2;
    showScreenCorners = false;
    forceBlackScreenCorners = false;
    scaleRatio = 1;
    radiusRatio = 1;
    iRadiusRatio = 1;
    boxRadiusRatio = 1;
    screenRadiusRatio = 1;
    animationSpeed = 1;
    animationDisabled = false;
    compactLockScreen = true;
    lockScreenAnimations = true;
    lockOnSuspend = true;
    showSessionButtonsOnLockScreen = true;
    showHibernateOnLockScreen = false;
    enableLockScreenMediaControls = true;
    enableShadows = true;
    enableBlurBehind = true;
    shadowDirection = "bottom_right";
    shadowOffsetX = 2;
    shadowOffsetY = 3;
    allowPanelsOnScreenWithoutBar = true;
    showChangelogOnStartup = true;
    telemetryEnabled = false;
    enableLockScreenCountdown = true;
    lockScreenCountdownDuration = 10000;
    autoStartAuth = false;
    allowPasswordWithFprintd = false;
    clockStyle = "digital";
    clockFormat = "HH:mm ";
    passwordChars = false;
    lockScreenMonitors = [ ];
    lockScreenBlur = 0.5;
    lockScreenTint = 0.1;
    keybinds = {
      keyUp = [ "Up" ];
      keyDown = [ "Down" ];
      keyLeft = [ "Left" ];
      keyRight = [ "Right" ];
      keyEnter = [
        "Return"
        "Enter"
      ];
      keyEscape = [ "Esc" ];
      keyRemove = [ "Del" ];
    };
    reverseScroll = false;
    smoothScrollEnabled = true;
  };

  idle = {
    enabled = true;
    screenOffTimeout = 600;
    lockTimeout = 660;
    suspendTimeout = 1800;
    fadeDuration = 5;
  };

  systemMonitor = {
    cpuWarningThreshold = 80;
    cpuCriticalThreshold = 90;
    tempWarningThreshold = 80;
    tempCriticalThreshold = 90;
    gpuWarningThreshold = 80;
    gpuCriticalThreshold = 90;
    memWarningThreshold = 80;
    memCriticalThreshold = 90;
    swapWarningThreshold = 80;
    swapCriticalThreshold = 90;
    diskWarningThreshold = 80;
    diskCriticalThreshold = 90;
    diskAvailWarningThreshold = 20;
    diskAvailCriticalThreshold = 10;
    batteryWarningThreshold = 20;
    batteryCriticalThreshold = 5;
    enableDgpuMonitoring = false;
    useCustomColors = false;
    externalMonitor = "resources || missioncenter || jdsystemmonitor || corestats || system-monitoring-center || gnome-system-monitor || plasma-systemmonitor || mate-system-monitor || ukui-system-monitor || deepin-system-monitor || pantheon-system-monitor";
  };

  network = {
    bluetoothRssiPollingEnabled = false;
    bluetoothRssiPollIntervalMs = 60000;
    networkPanelView = "ethernet";
    wifiDetailsViewMode = "list";
    bluetoothDetailsViewMode = "grid";
    bluetoothHideUnnamedDevices = false;
    disableDiscoverability = false;
    bluetoothAutoConnect = true;
  };

  audio = {
    volumeStep = 5;
    volumeOverdrive = false;
    spectrumFrameRate = 30;
    visualizerType = "none";
    spectrumMirrored = true;
    mprisBlacklist = [ ];
    volumeFeedback = false;
  };

  brightness = {
    brightnessStep = 5;
    enforceMinimum = true;
    enableDdcSupport = true;
    backlightDeviceMappings = [ ];
  };

  sessionMenu = {
    enableCountdown = false;
    countdownDuration = 10000;
    position = "center";
    showHeader = true;
    showKeybinds = true;
    largeButtonsStyle = true;
    largeButtonsLayout = "grid";
    powerOptions = [
      {
        action = "lock";
        countdownEnabled = true;
        enabled = true;
        keybind = "1";
      }
      {
        action = "logout";
        countdownEnabled = true;
        enabled = true;
        keybind = "2";
      }
      {
        action = "suspend";
        countdownEnabled = true;
        enabled = true;
        keybind = "3";
      }
      {
        action = "hibernate";
        countdownEnabled = true;
        enabled = false;
      }
      {
        action = "reboot";
        countdownEnabled = true;
        enabled = true;
        keybind = "4";
      }
      {
        action = "shutdown";
        countdownEnabled = true;
        enabled = true;
        keybind = "5";
      }
      {
        action = "rebootToUefi";
        countdownEnabled = true;
        enabled = false;
      }
      {
        action = "userspaceReboot";
        countdownEnabled = true;
        enabled = false;
      }
    ];
  };

  noctaliaPerformance = {
    disableWallpaper = true;
    disableDesktopWidgets = true;
  };

  hooks = {
    enabled = false;
  };

  plugins = {
    autoUpdate = false;
    notifyUpdates = true;
  };

  desktopWidgets = {
    enabled = false;
    overviewEnabled = true;
    gridSnap = false;
    gridSnapScale = false;
    monitorWidgets = [ ];
  };
}
