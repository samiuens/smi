{
  platforms = [ "darwin" ];
  module =
    { lib, ... }:
    {
      home.activation = {
        clearDock = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
          sentinel="$HOME/.local/share/nix-activation/dock-cleared"
          if [ ! -f "$sentinel" ]; then
            /usr/bin/defaults write com.apple.dock persistent-apps -array
            /usr/bin/defaults write com.apple.dock persistent-others -array
            /usr/bin/killall Dock 2>/dev/null || true
            mkdir -p "$(dirname "$sentinel")"
            touch "$sentinel"
          fi
        '';

        disableKeyboardShortcuts = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
          sentinel="$HOME/.local/share/nix-activation/keyboard-shortcuts-disabled"
          if [ ! -f "$sentinel" ]; then
            /usr/bin/python3 <<'PYEOF'
          import plistlib, subprocess, sys, tempfile, pathlib
          with tempfile.NamedTemporaryFile(suffix=".plist", delete=False) as f:
              tmp = pathlib.Path(f.name)
          try:
              r = subprocess.run(["/usr/bin/defaults", "export", "com.apple.symbolichotkeys", str(tmp)], capture_output=True)
              if r.returncode != 0:
                  sys.exit(0)
              with open(tmp, "rb") as f:
                  plist = plistlib.load(f)
              for k in plist.get("AppleSymbolicHotKeys", {}):
                  plist["AppleSymbolicHotKeys"][k]["enabled"] = False
              with open(tmp, "wb") as f:
                  plistlib.dump(plist, f)
              subprocess.run(["/usr/bin/defaults", "import", "com.apple.symbolichotkeys", str(tmp)], check=True)
          finally:
              tmp.unlink(missing_ok=True)
          PYEOF
            mkdir -p "$(dirname "$sentinel")"
            touch "$sentinel"
          fi
        '';
      };
    };
}
