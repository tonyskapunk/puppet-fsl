class motdi {
  $motd_file = $operatingsystem ? {
    /(CentOS|RedHat|Fedora)/ => '/etc/motd',
    /(Debian|Ubuntu)/        => '/etc/motd.tail'
  }    
  file {
    "$motd_file":
      content => template("motdi/motd.erb");
  }
}
