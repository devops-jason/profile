# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::base
class profile::base (
    String $puppetserver_fqdn = 'puppet.local',
    String $puppetserver_ip   = '192.168.1.5',
    String $host_file         = '/etc/hosts',
) {

    host { 'localhost':
        ensure       => 'present',
        host_aliases => ['localhost.localdomain', $facts['fqdn'], $facts['hostame']],
        ip           => '127.0.0.1',
        target       => $host_file,
    }

    host { $puppetserver_fqdn:
        ensure       => 'present',
        host_aliases => ['puppet'],
        ip           => $puppetserver_ip,
        target       => $host_file,
    }
}
