{ pkgs }: {
  deps = [
    # Rust
	  pkgs.cargo
	  pkgs.cargo-edit
	  pkgs.clippy
	  pkgs.rustfmt
    pkgs.cargo-binstall
    pkgs.cargo-watch
    pkgs.rust-analyzer
    pkgs.rustc
    
    # other Dependencies
      # OpenSSL
      pkgs.openssl.dev
      pkgs.pkg-config

      # Console
      pkgs.nushell

      # Command runner
      pkgs.just

    # Utilities
    pkgs.htop
    pkgs.ffmpeg-full
  ];
  env = {
    # OpenSSL
    PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";
    Lib = "${pkgs.openssl.dev}/lib/";
  };
}