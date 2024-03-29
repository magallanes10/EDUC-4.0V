{ pkgs }: {
  deps = [
    pkgs.w3m
    pkgs.pax-rs
    pkgs.nodejs
    pkgs.libuuid
    pkgs.nodePackages.typescript-language-server
    pkgs.yarn
    pkgs.replitPackages.jest
  ];
  env = {
    LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [pkgs.libuuid];
  };
}