class cpanel::seo {

    exec { "install_seo":
        cwd => "/tmp",
        command => "/usr/bin/wget/wget -N www.attracta.com/static/download/cpanel-install && sh cpanel-install",
        require => Class['cpanel'],
        refreshonly => true
    }

}