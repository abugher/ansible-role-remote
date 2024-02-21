#!/usr/bin/perl -W

use strict;
use warnings;

use CGI;


my $q = CGI->new();
my $station = $q->param('station');

if(  $station !~ /^[0-9]{1,100}$/ ) {
  die( 'I need a reasonably sized number.' );
}

my $ret = 0;
system( 'sudo /etc/init.d/pianobar stop >/dev/null 2>&1' );
$ret = ( $? >> 8 );
if( 0 != $ret ) {
  die "Error:  Failed to stop pianobar: ${ret}";
}
my $real_config = readlink( '/etc/pianobard/config' );
my $real_config_path="/etc/pianobard/${real_config}";
open(my $real_config_in, '<', $real_config_path) or die "Error:  Could not open config file (r):  ${real_config_path}";
my @old_config_lines = do { local $/; <$real_config_in> };
my @new_config_lines;
for(@old_config_lines) {
  my $new_line = $_;
  $new_line =~ s/autostart_station = [0-9]+/autostart_station = ${station}/;
  push(@new_config_lines, $new_line );
}
open(my $real_config_out, '>', $real_config_path) or die "Error:  Could not open config file (w):  ${real_config_path}";
print{$real_config_out} @new_config_lines;

system( 'sudo /etc/init.d/pianobar start >/dev/null 2>&1' );
$ret = ( $? >> 8 );
if( 0 != $ret ) {
  die "Error:  Failed to start pianobar: ${ret}";
}

# It starts paused.  User is interacting.  Make sound.
system( 'echo " " > /pianobar.control' );

print( "Content-type:text/html\n\n" );
print( "<meta http-equiv=refresh content='.1;/remote.pl'>\n" );
