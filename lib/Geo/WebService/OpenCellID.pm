package Geo::WebService::OpenCellID;
use warnings;
use strict;
use base qw{Geo::WebService::OpenCellID::Base};
use Geo::WebService::OpenCellID::cell;
use Geo::WebService::OpenCellID::measure;
our $VERSION = '0.01';

=head1 NAME

Geo::WebService::OpenCellID - Perl API for the opencellid.org database

=head1 SYNOPSIS

  use Geo::WebService::OpenCellID;
  my $gwo=Geo::WebService::OpenCellID->new(key=>$apikey);
  my $point=$gwo->cell->get(mcc=>$country,
                            mnc=>$network,
                            lac=>$locale,
                            cellid=>$cellid);
  printf "Lat:%s, Lon:%s\n", $point->latlon;

=head1 DESCRIPTION

Perl Interface to the database at http://www.opencellid.org/

=head1 USAGE

=head1 CONSTRUCTOR

=head2 new

  my $obj = Geo::WebService::OpenCellID->new();

=cut

=head1 METHODS

=head2 key

=cut

=head2 cell

Returns a L<Geo::WebService::OpenCellID::cell> object.

=cut

sub cell {
  my $self=shift;
  unless (defined($self->{"cell"})) {
    $self->{"cell"}=Geo::WebService::OpenCellID::cell->new(key=>$self->key);
  }
  return $self->{"cell"};
}

=head2 measure

Returns a L<Geo::WebService::OpenCellID::measure> object.

=cut

sub measure {
  my $self=shift;
  unless (defined($self->{"measure"})) {
    $self->{"measure"}=Geo::WebService::OpenCellID::measure->new(key=>$self->key);
  }
  return $self->{"measure"};
}

=head1 BUGS

Submit to RT and email the Author

=head1 SUPPORT

Try the Author or Try 8motions.com

=head1 AUTHOR

    Michael R. Davis
    CPAN ID: MRDVT
    STOP, LLC
    domain=>michaelrdavis,tld=>com,account=>perl
    http://www.stopllc.com/

=head1 COPYRIGHT

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.

=head1 SEE ALSO

=cut

1;
