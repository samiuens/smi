{
  config,
  lib,
  ...
}:
{
  config = lib.mkIf config.smi.programs.zed.enable {
    programs.zed-editor = {
      extensions = [
        "material-icon-theme"
        "nix"
      ];
      userSettings = {
        icon_theme = "Material Icon Theme";
        ui_font_family = ".ZedSans";
        ui_font_size = 16;

        autosave = "on_focus_change";
        cursor_shape = "block";
        buffer_font_family = "JetBrains Mono";
        buffer_font_size = 16;

        terminal = {
          font_family = "JetBrainsMono Nerd Font";
          font_size = 14;
        };

        features.copilot = false;
        disable_ai = true;

        telemetry.metrics = false;

        load_direnv = "shell_hook";
        lsp.nixd.binary.path = "nixd";
        languages.Nix = {
          language_servers = [
            "nixd"
            "!nil"
          ];
          formatter.external = {
            command = "nixfmt";
            arguments = [ "-q" ];
          };
          format_on_save = "on";
        };
      };
    };
  };
}
