#!/usr/bin/perl -W

use strict;
use warnings;

use lib '/usr/local/share/remote/lib/perl';
use Remote::IncludeHTML;


# Kick off the HTTP session.
print( "Content-type:text/html\n\n" );

Remote::IncludeHTML::includeHTML('/usr/local/share/remote/lib/html/page-open.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/lib/html/head-open.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/lib/html/remote-js.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/lib/html/head-close.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/lib/html/remote-body.html');

print << "EOF";

</html>

EOF
