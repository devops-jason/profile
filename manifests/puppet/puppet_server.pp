# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::puppet::puppet_server
#
class profile::puppet::puppet_server {
  class { 'puppet_server':
    min_heap_size     => '512m',
    max_heap_size     => '512m',
    r10k_control_repo => 'git@github.com:devops-jason/controlrepo.git',
  }
}
