{
  description = "Simple JWT implementation using Google Cloud KMS";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/release-21.11";

  outputs = { self, nixpkgs, home-manager, ... }: {
    devShell = nixpkgs.lib.genAttrs nixpkgs.lib.platforms.unix (system:
      import ./shell.nix { pkgs = import nixpkgs { inherit system; }; }
    );
  };
}
