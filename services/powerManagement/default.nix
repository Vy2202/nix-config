{ ... }:
{
  powerManagement.resumeCommands = ''
    systemctl stop NetworkManager
    modprobe -rv iwlmvm
    sleep 1
    modprobe iwlmvm
    systemctl start NetworkManager
  '';
}
