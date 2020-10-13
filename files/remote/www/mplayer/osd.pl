#!/usr/bin/perl -W

use strict;
use warnings;

# mplayer:
#system( 'echo "osd" > /mplayer.control' );

# mpv:
system( 'echo "show-progress" > /mplayer.control' );

print( "Content-type:text/html\n\n" );
print << 'EOF';
<html>
  <body>
    Command issued.
  </body>
</html>
EOF
