# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::linux::base
class profile::linux::base {

    user { 'jasonmiller':
        ensure             => 'present',
        comment            => 'Jason Miller',
        gid                => 1000,
        groups             => ['wheel'],
        home               => '/home/jasonmiller',
        password           => '$6$hSxCIXn4v3gsOC5X$GqewlNJ8uB0AhzXg1QvwtzQCJiw.Hi54R0RpWpgrR./.viLUyvn51wTNPhxxxdCe9Yxs6UahHc2ZhRTLecxck/',
        password_max_age   => 99999,
        password_min_age   => 0,
        password_warn_days => 7,
        provider           => 'useradd',
        shell              => '/bin/bash',
        uid                => 1000,
    }

    group { 'wheel':
        ensure   => 'present',
        gid      => 10,
        members  => ['jasonmiller'],
        provider => 'groupadd',
    }

}

