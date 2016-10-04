# This module defines a small NixOS installation CD.  It does not
# contain any graphical stuff.

{ config, lib, ... }:

{
  imports =
    [ ./installation-cd-base.nix
      ../../profiles/minimal.nix
    ];

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAkQE9UzcF7hAEBSUoe5tR2W5/UdJXtNuxPTqCfNXVeCEDy2yXpv2tbQxKMNQGFFSMtelBG4hx1Xa2G6SMBSSx9Dh+PKbNMWT7SUXK4ynceV2yH3e3OswmXIUm5HN2KLZVBR0ucPy4DTs30HuP9sQ0GvXEdQss/kDuJeo3lFMPfErN7cj6RKJCR6cRwg4CbHQ3z4EQokgZQ1fe997qFSHCDmAmL7YaZYHJL42Re0dCjcp5Qq9t/Ia+DE3PJ1C0KA0zMYJKXsJXDg2kXGz0d7ZsDyrZWz8GARAJHiRUrEielHspp7HJIXWX/phHQdlmTXqn1cmlxQxAsWKQjR7JIiIB1Q== michael@hopper.elehack.net"
  ];
  
  systemd.services.sshd.wantedBy = lib.mkOverride 10 [ "multi-user.target" ];
  
  services.rogue.enable = lib.mkOverride 10 false;
}
