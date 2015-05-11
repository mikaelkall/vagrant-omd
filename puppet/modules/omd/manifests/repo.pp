# = Class: omd
# This class install the omd packages.

class omd::repo {

    yumrepo { 'epel-release':
        baseurl  => 'http://dl.fedoraproject.org/pub/epel/6/x86_64/',
        descr    => 'Epel repository',
        enabled  => 1,
        gpgcheck => 0
    }

    yumrepo { 'labs-consol-stable':
        baseurl  => 'https://labs.consol.de/repo/stable/rhel6/x86_64/',
        descr    => 'labs console stable',
        enabled  => 1,
        gpgcheck => 0
    }

}
