# local test ldap server
use strict;

package LDAPTestAD;

use Data::Dump qw( dump );
use Net::LDAP::Server::Test;
use Net::LDAP::Entry;

sub server_port {10636}
sub server_host { 'ldap://127.0.0.1:' . server_port() }

sub spawn_server {
    return Net::LDAP::Server::Test->new(
        server_port(),
        auto_schema      => 1,
        active_directory => 1,
    );
}

1;
