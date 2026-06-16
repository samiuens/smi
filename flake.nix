{
  description = "smi's nixos configuration";

  inputs = {
    # For local debugging: --override-input nix path:../flake
    nix.url = "github:samiuens/flake";
    nixpkgs.follows = "nix/nixpkgs";
    home-manager.follows = "nix/home-manager";
    disko.follows = "nix/disko";
    noctalia.follows = "nix/noctalia";
    dms.follows = "nix/dms";
    danksearch.follows = "nix/danksearch";
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
    nix-flatpak.follows = "nix/nix-flatpak";
    nix-index-database.follows = "nix/nix-index-database";
    nix4vscode.follows = "nix/nix4vscode";
    git-hooks.follows = "nix/git-hooks";
  };

  outputs =
    {
      self,
      nix,
      nixpkgs,
      git-hooks,
      ...
    }@inputs:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
      pkgsFor = forAllSystems (system: nixpkgs.legacyPackages.${system});

      userRegistry = import ./users;
      mkHost = nix.lib.mkHost { inherit inputs self userRegistry; } ./hosts;

      pre-commit-checkFor = forAllSystems (
        system:
        git-hooks.lib.${system}.run {
          src = ./.;
          hooks = {
            nixfmt.enable = true;
            statix.enable = true;
            deadnix.enable = true;
            nil.enable = true;
          };
        }
      );
    in
    {
      nixosConfigurations = {
        "smi-nixos" = mkHost "smi-nixos";
      };

      formatter = forAllSystems (system: pkgsFor.${system}.nixfmt);

      checks = forAllSystems (system: {
        pre-commit-check = pre-commit-checkFor.${system};
      });

      devShells = forAllSystems (system: {
        default = pkgsFor.${system}.mkShell {
          inherit (pre-commit-checkFor.${system}) shellHook;
          buildInputs =
            pre-commit-checkFor.${system}.enabledPackages
            ++ (with pkgsFor.${system}; [
              nixd
              nil
              statix
              deadnix
              nixfmt
            ]);
        };
      });
    };
}
