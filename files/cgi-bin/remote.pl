#!/usr/bin/perl -W

use strict;
use warnings;

use lib '/var/www/html/parts/perl';
use MelioraRemote::IncludeHTML;


# Kick off the HTTP session.
print( "Content-type:text/html\n\n" );

MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/page-open.html');
MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/head-open.html');
MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/magic-scroll.html');
MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/remote-js.html');
MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/head-close.html');
MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/remote-body.html');

print << "EOF";

</html>

EOF
