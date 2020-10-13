#!/usr/bin/perl -W

use strict;
use warnings;

# mplayer:
#system( 'echo "volume 1" > /mplayer.control' );

# mpv:
system( 'echo "add volume 1" > /mplayer.control' );

print( "Content-type:text/html\n\n" );
print << 'EOF';
<html>
  <body>
    Command issued.
  </body>
</html>
EOF
