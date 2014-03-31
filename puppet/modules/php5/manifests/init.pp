class php5 {

  exec { "update package manager":
    command => "/usr/bin/apt-get update"
  }

  package { "php5":
    ensure => present,
    require => Exec['update package manager'],
  }

  package { "php5-cli":
    ensure => present,
    require => Exec['update package manager'],
  }

  package { "php5-mysql":
    ensure => present,
    require => Exec['update package manager'],
  }

  package { "php5-curl":
    ensure => present,
    require => Exec['update package manager'],
  }

  package { "libapache2-mod-php5":
    ensure => present,
    require => Exec['update package manager'],
  }

  package { "memcached":
    ensure => present,
    require => Exec['update package manager'],
  }

  package { "php5-memcache":
    ensure => present,
    require => Exec['update package manager'],
  }

  package { "php-pear":
    ensure => present,
    require => Exec['update package manager'],
  }

  package { "php5-sqlite":
    ensure => present,
    require => Exec['update package manager'],
    notify => Service['apache2'],
  }

  package { "sqlite3":
    ensure => present,
    require => Exec['update package manager'],
    notify => Service['apache2'],
  }

  exec { "pecl install memcache":
    command => "/usr/bin/pecl install memcache",
    creates => "/etc/php5/conf.d/memcache.ini",
    require => Package['php-pear'],
  }

  exec { "setup memcache":
    command => "/bin/echo \"extension=memcache.so\" | /usr/bin/tee /etc/php5/conf.d/memcache.ini",
    onlyif => "/bin/ps aux | /bin/grep memcache",
    require => Exec['pecl install memcache'],
    notify => Service['apache2'],
  }

}
