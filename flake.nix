{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
    nixosConfigurations.elitebook = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        (./. + "/hosts/elitebook/default.nix")
        home-manager.nixosModule.home-manager
      ];
    };
  };
}