{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "pdfrip-shell";

  buildInputs = with pkgs; [
    rustc
    cargo
    rustfmt
    clippy

    # Häufig nützlich für Rust-Projekte
    pkg-config
  ];

  RUST_BACKTRACE = 1;

  shellHook = ''
    echo "🦀 Rust dev shell for pdfrip"
    echo "rustc: $(rustc --version)"
    echo "cargo: $(cargo --version)"
    echo ""
    echo "For a realease build: cargo build --release"
  '';
}
