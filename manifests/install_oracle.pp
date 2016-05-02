class precheckinstaller::install_oracle {
  require precheck::iis_install
  require precheck::net_45
  require precheck::net_35
  require precheck::msmq

  exec { 'install oadc':
    command   => '
PUSHD c:\\temp\\bin\\ODAC112030Xcopy_x64
cmd.exe /c install.bat all c:\oracle myhome',
    onlyif    => ['test-path c:\oracle\oledb', '! OracleMTSRecoveryService'],
    provider  => powershell,
    logoutput => true,
  }

}
