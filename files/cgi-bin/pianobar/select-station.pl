#!/usr/bin/perl -W

use strict;
use warnings;


my $config_link = readlink '/etc/pianobard/config';

my %stations;
if( 'config_aaron' eq $config_link ) {
  %stations = (
    'Messages'                  => '2017382573249178366',
    'Light &amp; Dark'          => '1357116537870527230',
    'Psych Up'                  => '1479436832798452478',
    'Soft'                      => '1281223838684982014',
    'Programmer\'s Special'     => '159320514875403006',
    'Mellow'                    => '1279496493032844030',
    'Tranquil'                  => '1945162032447007486',
    'Chip Hop / Sci Fi'         => '2022580514469489406',
    'Lucy'                      => '2473446810901064446',
    'Holidays'                  => '1750218569302715134',
  );
} elsif( 'config_rachel' eq $config_link ) {
  %stations = (
    'Mezzanine'                 => '1562875583332104695',
    'White Town'                => '841120468271643127',
    'Motion City Soundtrack'    => '1055134290584812023',
    'Cake'                      => '1418472044036897271',
    'Classical'                 => '1015334752798128631',
    'Baby Einstein'             => '2501570041974372855',
    'Disney'                    => '2520776027620522487',
    'Easy'                      => '3344906897976474103',
    'Electronic Holiday'        => '3825356010019895799',
    'Jazz'                      => '3344909930223385079',
    'Acoustic'                  => '3344908925201037815',
    'Family Xmas'               => '3408887174654081527',
    'Kids Xmas'                 => '3408887913388456439',
    'Club Dance'                => '3130991408939547127',
  );
} else {
  die( "Whose config file is this?  $config_link" );
}

print( "Content-type:text/html\n\n" );
print << "EOF";
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width; height=device-height; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">

    <link rel="stylesheet" type="text/css" href="/style.css">
  </head>

  <body>
EOF

for my $station_name ( sort( keys( %stations ) ) ) {
  my $station_id = $stations{$station_name};
  print << "EOF";
    <div class="date-stamp">
    </div>
    <div class="level">
    </div>
    <a href="/cgi-bin/pianobar/change-station.pl?station=$station_id">
      <div class='file-entry'>
        $station_name
      </div>
    </a>
    <div class="level">
    </div>

EOF
}

print << "EOF";
  </body>
</html>
EOF
