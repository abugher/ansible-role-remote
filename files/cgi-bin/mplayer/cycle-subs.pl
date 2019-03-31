#!/usr/bin/perl -W

use strict;
use warnings;

# Toggle.  We could set explicitly, but let the user play.
system( "echo 'sub_select' > /mplayer.control" );

print( "Content-type:text/html\n\n" );
print << 'EOF';
<html>
  <body>
    Command issued.
  </body>
</html>
EOF
