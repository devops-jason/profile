# @summary A profile class to setup a base osx system
#
# This is used to setup a base OSX system
#
# @example
#   include profile::osx::base
class profile::osx::base {

  user { 'jasonmiller':
    ensure     => 'present',
    comment    => 'Jason Lee Miller',
    gid        => 20,
    groups     => ['_appserveradm', '_appserverusr', '_lpadmin', 'admin'],
    home       => '/Users/jasonmiller',
    iterations => 35460,
    password   => 'e6162685501093e1c35098ef1ec7084d6b2010df3fcc40026f1116f0096174b61cf0217433ceb729b85f51437c06604e7c4353fbda28d17cdf89527b96a51ec227a74b7710d04222358654cade9014a652c6eb877d12ba9d5d13efe81c03dd4ca693a0a7062eb7b4ec6c13e9204d80d44f8a9b7747623affe28b310b09ba54b8',
    provider   => 'directoryservice',
    salt       => 'a7bcc191b36f0284b471334f26ccd4079aceff606d92bbd9ee35544554aedf5d',
    shell      => '/bin/zsh',
    uid        => 501,
  }

}
