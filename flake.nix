{
  description = "smi's nixos configuration";

  inputs = {
    nix.url = "github:samiuens/flake";
    nixpkgs.follows = "nix/nixpkgs";
    home-manager.follows = "nix/home-manager";
    disko.follows = "nix/disko";
    noctalia.follows = "nix/noctalia";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
    nix-flatpak.follows = "nix/nix-flatpak";
    nix-index-database.follows = "nix/nix-index-database";
  };

  outputs =
    {
      self,
      nix,
      ...
    }@inputs:
    let
      userRegistry = import ./users;
      mkHost = nix.lib.mkHost { inherit inputs self userRegistry; } ./hosts;
    in
    {
      nixosConfigurations = {
        "smi-nixos" = mkHost "smi-nixos";
      };
    };
}
