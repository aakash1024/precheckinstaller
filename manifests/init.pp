class precheckinstaller {
  include precheckinstaller::install_iis
  include precheckinstaller::install_msmq
  include precheckinstaller::install_net35
  include precheckinstaller::install_webauth
  include precheckinstaller::install_oracle

}
