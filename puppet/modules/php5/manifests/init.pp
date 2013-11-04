class php5 {
  package { "php5":
    ensure => present,
  }

  package { "php5-cli":
    ensure => present,
  }

  package { "php5-mysql":
    ensure => present,
  }

  package { "php5-curl":
    ensure => present,
  }

  package { "libapache2-mod-php5":
    ensure => present,
  }
}
