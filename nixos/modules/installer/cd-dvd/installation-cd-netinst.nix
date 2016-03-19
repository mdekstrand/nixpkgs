# This module defines a small NixOS installation CD.  It does not
# contain any graphical stuff.

{ config, lib, pkgs, ... }:

{
  imports =
    [ ./installation-cd-base.nix
      ../../profiles/minimal.nix
    ];

  environment.systemPackages = with pkgs; [
    tmux
  ];

  services.openssh.startWhenNeeded = true;
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAkQE9UzcF7hAEBSUoe5tR2W5/UdJXtNuxPTqCfNXVeCEDy2yXpv2tbQxKMNQGFFSMtelBG4hx1Xa2G6SMBSSx9Dh+PKbNMWT7SUXK4ynceV2yH3e3OswmXIUm5HN2KLZVBR0ucPy4DTs30HuP9sQ0GvXEdQss/kDuJeo3lFMPfErN7cj6RKJCR6cRwg4CbHQ3z4EQokgZQ1fe997qFSHCDmAmL7YaZYHJL42Re0dCjcp5Qq9t/Ia+DE3PJ1C0KA0zMYJKXsJXDg2kXGz0d7ZsDyrZWz8GARAJHiRUrEielHspp7HJIXWX/phHQdlmTXqn1cmlxQxAsWKQjR7JIiIB1Q== michael@hopper.elehack.net"
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDoJpcBsRk+u1AxnJHGhdaRzjMkpAuijVXlaIf2ge/Pq8ccgKJssLyabiyCDPhFSALwr7nzlBrpa+L/oiHuaZwVvyP+VPz4DcwexcykWWKkFuIXmN3M5lga4Bck4PqXVgfjN6SnICaarc3A/oXfDo6rqItNwVkTkfgSf+Gvk8w4blzSykPNbK7iKb3rs155McWCjOkfcheQks0Nz3OAWfU4NTIFXSVsrscyX3wqYBFimut3EYwucUAl17U6XBWQAVVWF0rHXvpBqkVmxlV/XJ1wwb2T6mPOecXqHioiC9ugu8IpL01eJX6zZodETscwUqpUoFoXPG+kmO01R0T8cY6h openpgp:0x429385FC"
  ];
}
