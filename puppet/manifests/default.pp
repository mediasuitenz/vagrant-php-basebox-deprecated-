
# Version control
include git

# Editors
package { "vim":
  ensure => present,
}

file {'/var/www/vhosts':
  ensure => 'directory'
}

include apache2

include php5

# Database
class {'mysql::server':
  root_password => 'password',
  override_options => {
    mysqld => {
      bind_address => '0.0.0.0'
    }
  }
}

mysql::db { 'development':
  user     => 'user',
  password => 'password',
  host     => 'localhost',
  grant    => ['SELECT', 'UPDATE'],
}

mysql::db { 'production':
  user     => 'user',
  password => 'password',
  host     => 'localhost',
  grant    => ['SELECT', 'UPDATE'],
}

mysql::db { 'testing':
  user     => 'user',
  password => 'password',
  host     => 'localhost',
  grant    => ['SELECT', 'UPDATE'],
}
