class apache::params {
  case $facts['os']['family'] {
    'Debian':{
      $package_name = 'apache2'
      $service_name = 'apache'
    }
    'RedHat' : {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    default: {
      fail("${facts['operatingsystem']} is not supported")
    }
  }
}

