class precheckinstaller::install_msmq {
  require precheckinstaller::install_webauth

  windowsfeature { 'MSMQ install': feature_name => ['MSMQ-Server'] }
}
