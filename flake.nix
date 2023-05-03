{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    let
      outputsWithoutSystem = { };
      outputsWithSystem = flake-utils.lib.eachDefaultSystem
        (system:
          let
            pkgs = import nixpkgs {
              inherit system;
            };
            lib = pkgs.lib;
          in
          {
            packages = {
              default =
                pkgs.writeShellApplication {
                  name = "scratch";
                  runtimeInputs = with pkgs; [ bash coreutils envsubst ];
                  text = builtins.readFile ./scratch;
                };
            };
          });
    in
    outputsWithSystem // outputsWithoutSystem;
}
