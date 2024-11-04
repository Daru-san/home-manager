{ lib, ... }:

with lib;

let

  modulePath = [
    "programs"
    "zen"
  ];

  mkFirefoxModule = import ./firefox/mkFirefoxModule.nix;

in
{
  meta.maintainers = [ hm.maintainers.bricked ];

  imports = [
    (mkFirefoxModule {
      inherit modulePath;
      name = "zen";
      wrappedPackageName = "zen";
      unwrappedPackageName = "zen-unwrapped";
      visible = true;

      platforms.linux = {
        configPath = ".zen";
        vendorPath = ".zen";
      };
      platforms.darwin = {
        configPath = "Library/Application Support/zen";
      };
    })
  ];
}
