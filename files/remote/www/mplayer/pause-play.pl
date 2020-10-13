#!/usr/bin/perl -W

use strict;
use warnings;

# mplayer:
#system( 'echo "pause" > /mplayer.control' );

# mpv:
system( 'echo "cycle pause" > /mplayer.control' );

print( "Content-type:text/html\n\n" );
print << 'EOF';
<html>
  <body>
    Command issued.
  </body>
</html>
EOF
