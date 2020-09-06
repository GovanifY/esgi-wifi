let
  pkgs = import <nixpkgs> {};

  texlive = pkgs.texlive.combine {
    inherit (pkgs.texlive)
    scheme-full;
  };
in {
  slides = pkgs.stdenv.mkDerivation {
    name = "slides";
    src = ./.;

    buildInputs = [
      texlive
      pkgs.pandoc
      pkgs.watchexec
    ];
  };
}
