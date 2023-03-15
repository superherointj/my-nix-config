{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-";

  outputs = { self, nixpkgs }: {

    nixosConfigurations.container = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        (./. + "/hosts/elitebook/default.nix")
      ];

    };
  };
}