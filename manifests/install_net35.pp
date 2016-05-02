# class precheckinstaller::install_net35 {
# exec { 'install .net35':
#  command   => '
# PUSHD c:\\temp\\bin\\sxs
# dism /online /enable-feature /featurename:NetFX3 /all /source:c:\bin\sxs',
#   provider  => powershell,
#  logoutput => true,
#}

#}

class precheckinstaller::install_net35 {
  require precheckinstaller::install_msmq

  windowsfeature { 'Net-Framework-Core':
    ensure  => 'present',
    restart => false,
    source  => "C:\\temp\\bin\\sxs\\",
  }
}

