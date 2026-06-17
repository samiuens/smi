# Font lists shared between hosts. Not a NixOS/darwin module — imported as a
# plain function (`import ./fonts.nix pkgs`) by the per-platform font configs.
pkgs:
let
  apple-color-emoji = pkgs.stdenvNoCC.mkDerivation {
    name = "apple-color-emoji";
    version = "20260219";
    src = pkgs.fetchurl {
      url = "https://github.com/samuelngs/apple-emoji-ttf/releases/download/macos-26-20260219-2aa12422/AppleColorEmoji-Linux.ttf";
      hash = "sha256-U1oEOvBHBtJEcQWeZHRb/IDWYXraLuo0NdxWINwPUxg=";
    };
    dontUnpack = true;
    installPhase = ''
      mkdir -p $out/share/fonts/truetype
      cp $src $out/share/fonts/truetype/AppleColorEmoji.ttf
    '';
  };
in
{
  # Fonts installed on every host (Linux + macOS).
  shared = with pkgs; [
    jetbrains-mono
    nerd-fonts.jetbrains-mono
    inter
    roboto
  ];

  # Linux-only extras. macOS ships its own emoji + system sans, so these are
  # not needed there.
  linux = (with pkgs; [ adwaita-fonts ]) ++ [ apple-color-emoji ];
}
