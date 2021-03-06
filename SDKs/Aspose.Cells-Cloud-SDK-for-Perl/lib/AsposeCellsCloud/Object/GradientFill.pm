package AsposeCellsCloud::Object::GradientFill;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base "AsposeCellsCloud::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

my $swagger_types = {
    'FillType' => 'string',
    'DirectionType' => 'string',
    'Angle' => 'double',
    'GradientStops' => 'ARRAY[GradientFillStop]'
};

my $attribute_map = {
    'FillType' => 'FillType',
    'DirectionType' => 'DirectionType',
    'Angle' => 'Angle',
    'GradientStops' => 'GradientStops'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'FillType' => $args{'FillType'}, 
        #
        'DirectionType' => $args{'DirectionType'}, 
        #
        'Angle' => $args{'Angle'}, 
        #
        'GradientStops' => $args{'GradientStops'}
    }; 

    return bless $self, $class; 
}  

# get swagger type of the attribute
sub get_swagger_types {
    return $swagger_types;
}

# get attribute mappping
sub get_attribute_map {
    return $attribute_map;
}

1;
