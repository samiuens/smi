{
  location = {
    name = "";
    weatherEnabled = true;
    weatherShowEffects = true;
    weatherTaliaMascotAlways = false;
    useFahrenheit = false;
    use12hourFormat = false;
    showWeekNumberInCalendar = false;
    showCalendarEvents = true;
    showCalendarWeather = true;
    analogClockInCalendar = false;
    firstDayOfWeek = -1;
    hideWeatherTimezone = false;
    hideWeatherCityName = false;
    autoLocate = true;
  };

  calendar = {
    cards = [
      {
        enabled = true;
        id = "calendar-header-card";
      }
      {
        enabled = true;
        id = "calendar-month-card";
      }
      {
        enabled = true;
        id = "weather-card";
      }
    ];
  };

  controlCenter = {
    position = "close_to_bar_button";
    diskPath = "/";
    shortcuts = {
      left = [
        { id = "Network"; }
        { id = "Bluetooth"; }
        { id = "KeepAwake"; }
      ];
      right = [
        { id = "DarkMode"; }
        { id = "Notifications"; }
        { id = "NightLight"; }
        { id = "WallpaperSelector"; }
      ];
    };
    cards = [
      {
        enabled = true;
        id = "profile-card";
      }
      {
        enabled = true;
        id = "shortcuts-card";
      }
      {
        enabled = true;
        id = "audio-card";
      }
      {
        enabled = false;
        id = "brightness-card";
      }
      {
        enabled = true;
        id = "weather-card";
      }
      {
        enabled = true;
        id = "media-sysmon-card";
      }
    ];
  };

  appLauncher = {
    enableClipboardHistory = true;
    autoPasteClipboard = false;
    enableClipPreview = true;
    clipboardWrapText = true;
    enableClipboardSmartIcons = true;
    enableClipboardChips = true;
    clipboardWatchTextCommand = "wl-paste --type text --watch cliphist store";
    clipboardWatchImageCommand = "wl-paste --type image --watch cliphist store";
    position = "center";
    pinnedApps = [ ];
    sortByMostUsed = true;
    terminalCommand = "ghostty -e";
    customLaunchPrefixEnabled = false;
    viewMode = "list";
    showCategories = true;
    iconMode = "tabler";
    showIconBackground = false;
    enableSettingsSearch = true;
    enableWindowsSearch = true;
    enableSessionSearch = true;
    ignoreMouseInput = false;
    overviewLayer = false;
    density = "default";
  };
}
