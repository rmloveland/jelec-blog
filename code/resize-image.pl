#!/usr/bin/env perl

use strict;
use warnings;
use 5.010;
use autodie;
use File::Copy;

my ($image, $percentage) = @ARGV;
$percentage //= '50%';

my $backup = "$image.bak";
copy $image, $backup;
system qq[C:/cygwin/bin/convert.exe -resize $percentage -verbose "$backup" "$image"];
