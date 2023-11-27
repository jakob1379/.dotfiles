{
  description = "Simple env with pre-commit";

  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; };

  outputs = { self, nixpkgs }:
    let
      forAllSystems = function:
        nixpkgs.lib.genAttrs [ "x86_64-linux" ]
          (system: function nixpkgs.legacyPackages.${system});

      generalPackages = pkgs: with pkgs; [
        nodejs
        pre-commit
        ansible-lint
        yamllint
      ];

      # pythonBasePackages = pkgs: with pkgs.python311Packages; [
      #   pip
      #   pip-tools
      # ];
    in {
      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShell {
          packages = (generalPackages pkgs); # ++ (pythonBasePackages pkgs);

          DOCKER_BUILDKIT = 1;

          shellHook = ''
          export PS1="(intraweb-shell 📑) $PS1"
          '';
        };
      });
    };
}
