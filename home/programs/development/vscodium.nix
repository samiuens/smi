{
  config,
  lib,
  pkgs,
  ...
}:
{
  config = lib.mkIf config.smi.programs.vscodium.enable {
    smi.programs.vscodium = {
      extensions = with pkgs.vscode-extensions; [ ];

      userSettings = { };

      profiles.default = { };
    };
  };
}
