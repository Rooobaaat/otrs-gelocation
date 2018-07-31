#!/usr/bin/perl
use strict;
use warnings;
use CGI qw(:standard);
my $coordinates = param('coordinates');
print header(-type  =>  'text/html',
        'X-FRAME-OPTIONS' => 'SAMEORIGIN');
print start_html(-title  =>'Geo Location');
        print '<iframe src="https://maps.google.com/maps?q=';
        print $coordinates;
        print '&z=11&output=embed" class="NoScale" width="1195" height="730" frameborder="0" style="border:0"></iframe>';
print end_html;
