class precheckinstaller::install_net35 {
  exec { 'install .net35':
    command   => '
PUSHD c:\\temp\\bin\\sxs
Start-Process -FilePath "install.bat" -ArgumentList "all c:\oracle odac" -wait',
    provider  => powershell,
    logoutput => true,
  }

}
