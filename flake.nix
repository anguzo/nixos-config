# /etc/nixos/flake.nix
{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: {
    nixosConfigurations.xps15 = nixpkgs.lib.nixosSystem {
      modules = [
        ./hosts/xps15/configuration.nix
        inputs.home-manager.nixosModules.default
        {
          home-manager.useGlobalPkgs = true;
          # Enable home-manager.
          home-manager.users.anguzo = import ./hosts/xps15/home.nix;
        }
      ];
    };
  };
}
