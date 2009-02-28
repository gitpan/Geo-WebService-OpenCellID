# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More tests => 16;

BEGIN { use_ok( 'Geo::WebService::OpenCellID' ); }
BEGIN { use_ok( 'Geo::WebService::OpenCellID::Base' ); }
BEGIN { use_ok( 'Geo::WebService::OpenCellID::cell' ); }
BEGIN { use_ok( 'Geo::WebService::OpenCellID::measure' ); }
BEGIN { use_ok( 'Geo::WebService::OpenCellID::Response' ); }
BEGIN { use_ok( 'Geo::WebService::OpenCellID::Response::cell' ); }
BEGIN { use_ok( 'Geo::WebService::OpenCellID::Response::cell::get' ); }
BEGIN { use_ok( 'Geo::WebService::OpenCellID::Response::cell::getMeasures' ); }
BEGIN { use_ok( 'Geo::WebService::OpenCellID::Response::measure' ); }
BEGIN { use_ok( 'Geo::WebService::OpenCellID::Response::measure::add' ); }

my $object = Geo::WebService::OpenCellID->new(key=>"XXX123");
isa_ok ($object, 'Geo::WebService::OpenCellID');
isa_ok ($object->cell, 'Geo::WebService::OpenCellID::cell');
isa_ok ($object->measure, 'Geo::WebService::OpenCellID::measure');
is($object->key, "XXX123", "key");
is($object->cell->key, "XXX123", "key");
is($object->measure->key, "XXX123", "key");
