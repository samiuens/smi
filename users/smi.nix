{
  description = "Sami Arda Ünsay";
  permissionType = "admin";

  hmConfig = _: {
    imports = [
      ../home/noctalia
      ../home/programs/browsers/zen
    ];

    smi = {
      programs = {
        #firefox.enable = true;
        chromium.enable = true;
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
        zed.enable = true;
        vscodium.enable = true;
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
        direnv.enable = true;
        comma.enable = true;
        claude.enable = true;
        ghostty.enable = true;
        keepassxc.enable = true;
        #drawio.enable = true;
        #bitwarden.enable = true;
        #obsidian.enable = true;
        #opencode.enable = true;
        #bun.enable = true;
        #vesktop.enable = true;
        #zotero.enable = true;
      };

      services.flatpak.packages = [
        "com.bambulab.BambuStudio"
      ];
    };
  };
}
