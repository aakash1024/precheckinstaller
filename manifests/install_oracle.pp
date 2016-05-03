class precheckinstaller::install_oracle {
  require precheckinstaller::install_net35

  exec { 'install oadc':
    command   => '
PUSHD c:\temp\bin\ODAC112030Xcopy_x64
Start-Process -FilePath "install.bat" -ArgumentList "all c:\oracle odac" -wait',
    onlyif    => ['powershell.exe -ExecutionPolicy ByPass -command {if (Test-Path c:\oracle\oledb) { exit 1;}  else { exit 0;}}',],
    provider  => powershell,
    logoutput => true,
  }

}
