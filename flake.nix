{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs =
    inputs@{ self, nixpkgs, ... }:
    {
      nixosConfigurations.mati-nixing = nixpkgs.lib.nixosSystem {
        modules = [ ./configuration.nix ];
      };
    };
}
