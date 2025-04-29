{ pkgs ? import <nixpkgs> {} }:

let
  pythonEnv = pkgs.python310.withPackages (ps: with ps; [
    pandas
    matplotlib
    numpy
    ipython
    jupyter
    jupyterlab
    pyspark
    ipykernel
  ]);
in

pkgs.mkShell {
  buildInputs = [
    pythonEnv
    pkgs.openjdk11
    pkgs.bashInteractive
  ];

  shellHook = ''
    export EDITOR=vim
    export JAVA_HOME=${pkgs.openjdk11}
    echo "Ambiente Python 3.10 + Jupyter + Spark carregado ✅"
  '';
}
