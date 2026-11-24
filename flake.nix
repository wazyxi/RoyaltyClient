{
  description = "A custom Minecraft launcher for LiquidBounce";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { nixpkgs, ... }:
    let
      forAllSystems = nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "aarch64-linux"
      ];
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        rec {
          royaltyclient-unwrapped = pkgs.callPackage ./nix/royaltyclient-unwrapped.nix { };
          royaltyclient = pkgs.callPackage ./nix/royaltyclient.nix { inherit royaltyclient-unwrapped; };
          default = royaltyclient;
        }
      );
    };
}
