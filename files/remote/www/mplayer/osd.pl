#!/usr/bin/perl -W

use strict;
use warnings;

# mplayer:
#system( 'echo "osd" > /mplayer.control' );

# mpv:
## momentary:
system( 'echo "show-progress" > /mplayer.control' );
## persistent:
system( 'echo "cycle osd-level" > /mplayer.control' );

print( "Content-type:text/html\n\n" );
print << 'EOF';
<html>
  <body>
    Command issued.
  </body>
</html>
EOF
