# nix/modules/home-manager.nix — auto-generated from lava-cloudflare.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.lava-cloudflare; in {
  options.programs.lava-cloudflare = {
    enable = lib.mkEnableOption "lava-cloudflare";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-cloudflare or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
