#!/usr/bin/perl -W

use strict;
use warnings;

# mplayer:
#system( 'echo "pt_step -1" > /mplayer.control' );

# mpv:
system( 'echo "playlist-prev" > /mplayer.control' );

print( "Content-type:text/html\n\n" );
print << 'EOF';
<html>
  <body>
    Command issued.
  </body>
</html>
EOF
