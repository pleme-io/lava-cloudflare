# nix/modules/darwin.nix — auto-generated from lava-cloudflare.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.lava-cloudflare; in {
  options.services.lava-cloudflare = {
    enable = lib.mkEnableOption "lava-cloudflare";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-cloudflare or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
