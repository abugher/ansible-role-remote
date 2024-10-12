#!/usr/bin/perl -W

use strict;
use warnings;

use CGI;
use File::Spec;
use URI::Escape;


my $q           = CGI->new();

my $file        = $q->param('file');
my @fileset     = $q->multi_param('fileset');

if( defined( $file ) ) {
  $file = File::Spec->rel2abs( 
    uri_unescape( $file ),
    '/'
  );
  $file =~ /^\/storage\/bittorrent\/content\// or die "Invalid file path: ${file}";
} else {
  for my $f ( keys( @fileset ) ) {
    $fileset[$f] = File::Spec->rel2abs( 
      uri_unescape( $fileset[$f] ),
      '/' 
    );
    $fileset[$f] =~ /^\/storage\/bittorrent\/content\// or die "Invalid file path: $fileset[$f]";
  }
}

print( "Content-type:text/html\n\n" );
if( defined( $file ) ) {
  @fileset = ( $file );
}

for my $file ( sort( @fileset ) ) {
  $file =~ s/\/storage\/bittorrent\/content\///;
  $file = uri_escape( $file );
  print( "<video controls>" );
  print( "  <source src='http://convert.neuronpointer.net/play.pl?file=$file' type='video/mp4'>" );
  print( "</video>" );
  print( "<meta http-equiv=refresh content='.1;http://convert.neuronpointer.net/play.pl?file=$file'>\n" );
  #print( "http://convert.neuronpointer.net/play.pl?file=$file\n" );
  #last;
}
