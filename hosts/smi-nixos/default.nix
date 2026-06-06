{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./disko.nix
  ];

  smi = {
    # ── Host ─────────────────────────────────────────────────────────────────
    host = {
      name = "smi-nixos";
      useLocalTime = true;
    };

    # ── Locale ───────────────────────────────────────────────────────────────
    # locale.timeZone      = "Europe/Berlin";
    # locale.defaultLocale = "en_US.UTF-8";
    locale.extraLocale = "de_DE.UTF-8";
    # locale.keyboard.layout  = "de";
    # locale.keyboard.variant = "";

    # ── Users ─────────────────────────────────────────────────────────────────
    users.stateVersion = "26.05";
    # users.extraUsers = [ ];

    # ── Desktop ───────────────────────────────────────────────────────────────
    desktop = {
      enable = true;
      environment = "hyprland";
      shell = "noctalia";
    };

    # ── Hardware ──────────────────────────────────────────────────────────────
    hardware = {
      audio.enable = true;
      bluetooth.enable = true;
      gpu = "amd";
    };

    # ── Services ──────────────────────────────────────────────────────────────
    services = {
      #printing.enable = true;
      flatpak.enable = true;
      #mullvad-vpn.enable = true;
      localsend.enable = true;

      # ── Virtualisation ────────────────────────────────────────────────────
      # docker.enable = true;
      # podman.enable = false;
    };

    # ── Tooling ──────────────────────────────────────────────────────────────
    nh = {
      enable = true;
      flakeDir = "/home/smi/Development/nix/smi";
    };

    # ── Boot ──────────────────────────────────────────────────────────────────
    boot.limine = {
      enable = true;
      secureBoot = true;
      windowsEfiUuid = "3da67cbf-ba14-44c6-a5cf-5a9951594208";
    };
  };

  # ─────────────────────────────────────────────────────────────────────────
  system.stateVersion = "25.11";
}
