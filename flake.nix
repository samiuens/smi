{
  description = "smi's nixos configuration";

  inputs = {
    # For local debugging: --override-input nix path:../flake
    nix.url = "github:samiuens/flake";
    nixpkgs.follows = "nix/nixpkgs";
    home-manager.follows = "nix/home-manager";
    nix-darwin.follows = "nix/nix-darwin";
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
        "x86_64-darwin"
        "aarch64-darwin"
      ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
      pkgsFor = forAllSystems (system: nixpkgs.legacyPackages.${system});

      userRegistry = import ./users;
      consumerHomeModule = {
        home-manager.sharedModules = [ ./home ];
      };
      mkHost = nix.lib.mkHost {
        inherit inputs self userRegistry;
        extraModules = [ consumerHomeModule ];
      } ./hosts;
      mkDarwinHost = nix.lib.mkDarwinHost {
        inherit inputs self userRegistry;
        extraModules = [
          consumerHomeModule
          ./modules/darwin
        ];
      } ./hosts;

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

      darwinConfigurations = {
        "smi-mac" = mkDarwinHost "smi-mac";
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
