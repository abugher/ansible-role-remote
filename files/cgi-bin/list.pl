#!/usr/bin/perl -W

use strict;
use warnings;

use CGI;
use URI::Encode;


use lib '/usr/local/share/remote/parts/perl';
use Remote::IncludeHTML;

# Kick off the HTTP session.
print( "Content-type:text/html\n\n" );

Remote::IncludeHTML::includeHTML('/usr/local/share/remote/parts/html/page-open.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/parts/html/head-open.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/parts/html/listing-js.html');
Remote::IncludeHTML::includeHTML('/usr/local/share/remote/parts/html/head-close.html');

print << "EOF";

<form action=''>
<input class='' type='textarea' name='entry'></input>
</form>
</body>
</html>
EOF
