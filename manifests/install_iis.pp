class precheckinstaller::install_iis {
  windowsfeature { 'IIS install':
    feature_name => [
      'Web-Server',
      'Web-Asp-Net45',
      'Web-Metabase',
      'NET-Framework-45-Features',
      'Web-Mgmt-Console',
      'Web-Lgcy-Mgmt-Console']
  }
}
