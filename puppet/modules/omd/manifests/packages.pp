# = Class: omd
# This class install the omd packages.

class omd::packages ( $sitename = hiera('sitename') ) {

    # Creates the site from hiera variable.
    $command = "bash -c 'omd create ${sitename} && omd start ${sitename}'"

    package { 'omd-1.20':
        ensure  => installed,
        require => Yumrepo['labs-consol-stable', 'epel-release'],
        notify  => Exec['omd_setup'],
    }

    exec { 'omd_setup':
        refreshonly => true,
        command     => $command,
        path        => [ '/usr/bin/', '/bin/' ],
    }

}
