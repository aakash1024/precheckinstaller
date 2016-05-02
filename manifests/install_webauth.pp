class precheckinstaller::install_webauth {
  require precheckinstaller::install_iis

  windowsfeature { 'web_auth': feature_name => ['Web-Windows-Auth'] }
}

