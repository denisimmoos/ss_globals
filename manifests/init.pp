# == Class: ss_globals
#
# Full description of class ss_globals here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { ss_globals:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#

class ss_globals (
  $std_groups  		= '',
  $std_users  		= '',
  $std_files   		= '',
  $std_file_lines     	= '',
  $std_packages  	= '',
  $std_services  	= ''
) {
  create_resources(group,	$ss_globals::std_groups		)
  create_resources(user,	$ss_globals::std_users		)
  create_resources(file,	$ss_globals::std_files		)
  create_resources(package,	$ss_globals::std_packages	)
  create_resources(service,	$ss_globals::std_services	)
  create_resources(file_line,	$ss_globals::std_file_lines	)
}

