# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include train::appach_install
class train::appach_install {
# execute 'dnf-get update'
exec { 'dnf-update':                    # exec resource named 'dnf-update'
  command => '/usr/bin/dnf update',  # command this resource will run
}
}
