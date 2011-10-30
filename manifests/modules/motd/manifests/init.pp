class motd {
  $motd_file = $operatingsystem ? {
    /(CentOS|RedHat|Fedora)/ => '/etc/motd',
    /(Debian|Ubuntu)/        => '/etc/motd.tail'
  }
  file {
    "$motd_file":
      content => template("motd/motd.erb");
  }
}
