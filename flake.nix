{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {

    nixosConfigurations.elitebook = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        (./. + "/hosts/elitebook/default.nix")
      ];

    };
  };
}