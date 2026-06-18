{
  description = "Sami Arda Ünsay";
  permissionType = "admin";

  hmConfig =
    { pkgs, ... }:
    {
      smi = {
        programs = {
          # Editors
          vscodium.enable = true;
          zed.enable = true;

          # Version control
          git = {
            enable = true;
            signing.enable = true;
            user = {
              name = "Sami Arda Ünsay";
              email = "192653549+samiuens@users.noreply.github.com";
            };
            github = {
              enable = true;
              username = "samiuens";
            };
          };
          lazygit.enable = true;

          # Development tooling
          # bun.enable = true;
          claude.enable = true;
          comma.enable = true;
          direnv.enable = true;
          graphify.enable = true;
          nodejs.enable = true;
          # opencode.enable = true;

          # Terminal
          ghostty = {
            enable = true;
            fontSize = if pkgs.stdenv.hostPlatform.isDarwin then 14 else 12;
          };

          # Security
          # bitwarden.enable = true;
          keepassxc.enable = true;

          # Productivity
          drawio.enable = true;
          # kicad.enable = true;
          obsidian.enable = true;
          zotero.enable = true;

          # Communication
          # vesktop.enable = true;

          # Desktop & utilities
          aerospace.enable = true;
          raycast.enable = true;
          shottr.enable = true;

          # Browsers
          # chromium.enable = true;
          zen = {
            enable = true;
            spaces = {
              "Persönlich" = {
                id = "0597770a-4614-4634-8b27-63a4407577f1";
                icon = "👤";
                position = 1000;
                container = 1;
              };
            };
            containers = {
              Personal = {
                color = "blue";
                icon = "circle";
                id = 1;
              };
            };
          };
        };

        config = {
          linearmouse.enable = true;
        };
      };
    };
}
