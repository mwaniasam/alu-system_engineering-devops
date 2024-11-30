# a puppet code that increases the ULIMIT of nginx from 15 to 4096

#to increase ULIMIT

exec {'modify max open files limit setting':
  command => 'sed -i "s/15/10000/" /etc/default/nginx && sudo service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games',
}
