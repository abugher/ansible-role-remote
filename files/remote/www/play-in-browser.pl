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
  $file =~ s/\/storage\/bittorrent\/content\///;
  $file = uri_escape( $file );
  print( "<meta http-equiv=refresh content='.1;http://download.neuronpointer.net/$file'>\n" );
} else {
  for my $f ( sort( @fileset ) ) {
    $f =~ s/\/storage\/bittorrent\/content\///;
    $f = uri_escape( $f );
    print( "<meta http-equiv=refresh content='.1;http://download.neuronpointer.net/$f'>\n" );
    last;
  }
}
