class precheckinstaller::install_msmq {
  windowsfeature { 'MSMQ': feature_name => ['MSMQ-Server'] }
}
