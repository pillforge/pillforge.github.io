with (import <nixpkgs> {});
let
  gems = bundlerEnv {
    name = "pillforge-gems";
    inherit ruby;
    gemdir = ./.;
  };
in stdenv.mkDerivation {
  name = "pillforge";
  buildInputs = [gems ruby];
  LANG = "en_US.UTF-8";
}
