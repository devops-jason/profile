# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::puppet::puppet_client
class profile::puppet::puppet_client {
  class { 'puppet_client':
    puppet_server => 'puppet.local',
  }
}
