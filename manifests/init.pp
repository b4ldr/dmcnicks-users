# == Class: users
#
# Creates users and transfers SSH keys.
#
# === Parameters
#
# [*users*]
#   A hash of users to be created.
#
# === Authors
#
# David McNicol <david@mcnicks.org>
#

class users (
  $users,
  $groups,
) {
  group { $groups:
    ensure => present,
  }
  create_resources('users::user', $users)
}
