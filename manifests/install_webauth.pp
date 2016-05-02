class precheckinstaller::install_webauth {
  windowsfeature { 'web_auth': feature_name => ['Web-Windows-Auth'] }
}

