# @summary This class defines the configuration values for puppet_server and applies them to the puppet_server class
#
# This calls the puppet_server class with values that are for the .local domain
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
