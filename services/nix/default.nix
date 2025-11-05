{ ... }:
{
  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];

    substituters = [
      "https://cuda-maintainers.cachix.org"
      "https://mirrors.ustc.edu.cn/nix-channels/store"
      "https://mirror.sjtu.edu.cn/nix-channels/store"
      "https://nix-community.cachix.org"
    ];

    trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "cuda-maintainers.cachix.org-1:0dq3bujKpuEPMCX6U4WylrUDZ9JyUG0VpVZa7CNfq5E="
    ];

    auto-optimise-store = true;

    trusted-users = [
      "root"
      "wei"
    ];
  };

  nix.gc = {
    automatic = false;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  nix.sshServe = {
    enable = true;
    keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMOgsldLKlYm6xLoLFPlfEgEKH3OoE0ubyVUyZz3Pmmz wei@gray"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIr9JuIDA/YHCbnniAvRePHHVhMeZiubvaWn6WyNKp5J wei@blue"
    ];
  };

  nixpkgs.config.allowUnfree = true;
}
