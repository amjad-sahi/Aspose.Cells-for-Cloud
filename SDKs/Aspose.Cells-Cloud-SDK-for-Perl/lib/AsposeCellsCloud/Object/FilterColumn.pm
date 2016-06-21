package AsposeCellsCloud::Object::FilterColumn;

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
    'FieldIndex' => 'int',
    'FilterType' => 'string',
    'MultipleFilters' => 'MultipleFilters',
    'ColorFilter' => 'ColorFilter',
    'CustomFilters' => 'ARRAY[CustomFilter]',
    'DynamicFilter' => 'DynamicFilter',
    'IconFilter' => 'IconFilter',
    'Top10Filter' => 'Top10Filter',
    'Visibledropdown' => 'string'
};

my $attribute_map = {
    'FieldIndex' => 'FieldIndex',
    'FilterType' => 'FilterType',
    'MultipleFilters' => 'MultipleFilters',
    'ColorFilter' => 'ColorFilter',
    'CustomFilters' => 'CustomFilters',
    'DynamicFilter' => 'DynamicFilter',
    'IconFilter' => 'IconFilter',
    'Top10Filter' => 'Top10Filter',
    'Visibledropdown' => 'Visibledropdown'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'FieldIndex' => $args{'FieldIndex'}, 
        #
        'FilterType' => $args{'FilterType'}, 
        #
        'MultipleFilters' => $args{'MultipleFilters'}, 
        #
        'ColorFilter' => $args{'ColorFilter'}, 
        #
        'CustomFilters' => $args{'CustomFilters'}, 
        #
        'DynamicFilter' => $args{'DynamicFilter'}, 
        #
        'IconFilter' => $args{'IconFilter'}, 
        #
        'Top10Filter' => $args{'Top10Filter'}, 
        #
        'Visibledropdown' => $args{'Visibledropdown'}
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