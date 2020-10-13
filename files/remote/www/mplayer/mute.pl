#!/usr/bin/perl -W

use strict;
use warnings;

# mplayer:
#system( 'echo "mute" > /mplayer.control' );

# mpv:
system( 'echo "cycle mute" > /mplayer.control' );

print( "Content-type:text/html\n\n" );
print << 'EOF';
<html>
  <body>
    Command issued.
  </body>
</html>
EOF
