#!/usr/bin/perl -W

use strict;
use warnings;

use lib '/usr/local/share/remote/parts/perl';
use Remote::IncludeHTML;


# Kick off the HTTP session.
print( "Content-type:text/html\n\n" );

Remote::IncludeHTML::includeHTML('/usr/local/share/remote/parts/html/page-open.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/parts/html/head-open.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/parts/html/remote-js.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/parts/html/head-close.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/parts/html/remote-body.html');

print << "EOF";

</html>

EOF
