{
  config,
  lib,
  pkgs,
  ...
}:
{
  config = lib.mkIf config.smi.programs.zed.enable {
    home.packages = with pkgs; [ zed-editor ];
  };
}
