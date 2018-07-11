#!/usr/bin/perl -W

use strict;
use warnings;

use CGI;
use URI::Encode;


use lib '/var/www/html/parts/perl';
use MelioraRemote::IncludeHTML;

# Kick off the HTTP session.
print( "Content-type:text/html\n\n" );

MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/page-open.html');
MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/head-open.html');
MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/listing-js.html');
MelioraRemote::IncludeHTML::includeHTML('/var/www/html/parts/html/head-close.html');

print << "EOF";

<form action=''>
<input class='' type='textarea' name='entry'></input>
</form>
</body>
</html>
EOF
