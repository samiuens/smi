{
  config,
  lib,
  pkgs,
  ...
}:
let
  fromOpenVsx = pkgs.nix4vscode.forOpenVsx;
  fromVscode = pkgs.nix4vscode.forVscode;
in
{
  config = lib.mkIf config.smi.programs.vscodium.enable {
    smi.programs.vscodium = {
      # Shared across every profile.
      extensions = fromOpenVsx [
        "antfu.theme-vitesse"
        "miguelsolorio.symbols"
        "editorconfig.editorconfig"
        "aaron-bond.better-comments"
        "mkhl.direnv"
        "eamodio.gitlens"
        "seatonjiang.gitmoji-vscode"
      ];

      userSettings = {
        "editor.fontFamily" = "JetBrains Mono";
        "editor.fontSize" = 16;
        "editor.lineHeight" = 1.8;
        "editor.fontLigatures" = true;

        "editor.formatOnSave" = true;
        "editor.smoothScrolling" = true;
        "editor.cursorSmoothCaretAnimation" = "on";
        "editor.cursorBlinking" = "smooth";

        "workbench.colorTheme" = "Vitesse Dark";
        "workbench.iconTheme" = "symbols";
        "workbench.sideBar.location" = "left";
        "workbench.activityBar.location" = "default";
        "workbench.list.smoothScrolling" = true;

        "terminal.integrated.fontFamily" = "JetBrainsMono Nerd Font";
        "terminal.integrated.fontSize" = 14;
        "terminal.integrated.smoothScrolling" = true;
        "terminal.integrated.fontLigatures.enabled" = true;

        "files.autoSave" = "onFocusChange";

        "git.autofetch" = true;
        "git.confirmSync" = false;
        "telemetry.telemetryLevel" = "off";
        "update.mode" = "none";
        "extensions.autoUpdate" = false;

        "editor.minimap.enabled" = false;
        "breadcrumbs.enabled" = false;
        "editor.stickyScroll.enabled" = false;
        "editor.guides.indentation" = false;
        "editor.renderWhitespace" = "none";
        "editor.overviewRulerBorder" = false;
        "editor.hideCursorInOverviewRuler" = true;
        "window.commandCenter" = false;
        "workbench.layoutControl.enabled" = false;
        "workbench.startupEditor" = "none";
        "workbench.tips.enabled" = false;
      };

      profiles = {
        # Lightweight landing profile: shared only, no stack extensions.
        default = { };

        nix = {
          extensions = fromOpenVsx [ "jnoortheen.nix-ide" ];
          userSettings = {
            "nix.enableLanguageServer" = true;
            "nix.serverPath" = "nixd";
            "[nix]"."editor.defaultFormatter" = "jnoortheen.nix-ide";
          };
        };

        web = {
          extensions = fromOpenVsx [
            "dbaeumer.vscode-eslint"
            "esbenp.prettier-vscode"
            "bradlc.vscode-tailwindcss"
          ];
          userSettings = {
            "[javascript]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
            "[javascriptreact]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
            "[typescript]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
            "[typescriptreact]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
            "[json]"."editor.defaultFormatter" = "esbenp.prettier-vscode";
          };
        };

        infra = {
          extensions =
            fromOpenVsx [
              "redhat.vscode-yaml"
              "redhat.ansible"
            ]
            ++ fromVscode [ "pulumi.pulumi-vscode-tools" ];
          userSettings = {
            "redhat.telemetry.enabled" = false;
          };
        };

        typst = {
          extensions = fromOpenVsx [ "myriad-dreamin.tinymist" ];
          userSettings = {
            "[typst]"."editor.defaultFormatter" = "myriad-dreamin.tinymist";
            "tinymist.formatterMode" = "typstyle";
          };
        };
      };
    };
  };
}
