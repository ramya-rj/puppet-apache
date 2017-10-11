class apache::install(
  String $package_name = $::apache::package_name,
) {
  package { 'apache-package':
    name   => $package_name,
    ensure => present,
  }
}
