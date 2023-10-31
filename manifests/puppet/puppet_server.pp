# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::puppet::puppet_server
#
# @param r10k_control_repo
#   The git url for the control-repo used by r10k on the puppetserver
#
# @param min_heap_size
#   The minimum heap size used by the puppetserver specified in /etc/sysconfig/puppetserver
#
# @param max_heap_size
#   The maximum heap size used by the puppetserer specified in /etc/sysconfig/puppetserver
class profile::puppet::puppet_server (
  String $r10k_control_repo,
  String $min_heap_size = '512m',
  String $max_heap_size = '512m'
) {
  class { 'puppet_server':
    r10k_control_repo => $r10k_control_repo,
    min_heap_size     => $min_heap_size,
    max_heap_size     => $max_heap_size,
}
