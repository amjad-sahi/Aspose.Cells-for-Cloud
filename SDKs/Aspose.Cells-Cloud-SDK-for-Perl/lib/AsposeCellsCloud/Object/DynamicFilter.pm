package AsposeCellsCloud::Object::DynamicFilter;

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
    'DynamicFilterType' => 'string',
    'MaxValue' => 'object',
    'Value' => 'object'
};

my $attribute_map = {
    'DynamicFilterType' => 'DynamicFilterType',
    'MaxValue' => 'MaxValue',
    'Value' => 'Value'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'DynamicFilterType' => $args{'DynamicFilterType'}, 
        #
        'MaxValue' => $args{'MaxValue'}, 
        #
        'Value' => $args{'Value'}
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
