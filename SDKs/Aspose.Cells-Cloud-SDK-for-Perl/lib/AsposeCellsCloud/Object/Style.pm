package AsposeCellsCloud::Object::Style;

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
    'Font' => 'Font',
    'Name' => 'string',
    'CultureCustom' => 'string',
    'Custom' => 'string',
    'BackgroundColor' => 'Color',
    'ForegroundColor' => 'Color',
    'IsFormulaHidden' => 'boolean',
    'IsDateTime' => 'boolean',
    'IsTextWrapped' => 'boolean',
    'IsGradient' => 'boolean',
    'IsLocked' => 'boolean',
    'IsPercent' => 'boolean',
    'ShrinkToFit' => 'boolean',
    'IndentLevel' => 'int',
    'Number' => 'int',
    'RotationAngle' => 'int',
    'Pattern' => 'string',
    'TextDirection' => 'string',
    'VerticalAlignment' => 'string',
    'HorizontalAlignment' => 'string',
    'BorderCollection' => 'ARRAY[Border]',
    'link' => 'Link'
};

my $attribute_map = {
    'Font' => 'Font',
    'Name' => 'Name',
    'CultureCustom' => 'CultureCustom',
    'Custom' => 'Custom',
    'BackgroundColor' => 'BackgroundColor',
    'ForegroundColor' => 'ForegroundColor',
    'IsFormulaHidden' => 'IsFormulaHidden',
    'IsDateTime' => 'IsDateTime',
    'IsTextWrapped' => 'IsTextWrapped',
    'IsGradient' => 'IsGradient',
    'IsLocked' => 'IsLocked',
    'IsPercent' => 'IsPercent',
    'ShrinkToFit' => 'ShrinkToFit',
    'IndentLevel' => 'IndentLevel',
    'Number' => 'Number',
    'RotationAngle' => 'RotationAngle',
    'Pattern' => 'Pattern',
    'TextDirection' => 'TextDirection',
    'VerticalAlignment' => 'VerticalAlignment',
    'HorizontalAlignment' => 'HorizontalAlignment',
    'BorderCollection' => 'BorderCollection',
    'link' => 'link'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'Font' => $args{'Font'}, 
        #
        'Name' => $args{'Name'}, 
        #
        'CultureCustom' => $args{'CultureCustom'}, 
        #
        'Custom' => $args{'Custom'}, 
        #
        'BackgroundColor' => $args{'BackgroundColor'}, 
        #
        'ForegroundColor' => $args{'ForegroundColor'}, 
        #
        'IsFormulaHidden' => $args{'IsFormulaHidden'}, 
        #
        'IsDateTime' => $args{'IsDateTime'}, 
        #
        'IsTextWrapped' => $args{'IsTextWrapped'}, 
        #
        'IsGradient' => $args{'IsGradient'}, 
        #
        'IsLocked' => $args{'IsLocked'}, 
        #
        'IsPercent' => $args{'IsPercent'}, 
        #
        'ShrinkToFit' => $args{'ShrinkToFit'}, 
        #
        'IndentLevel' => $args{'IndentLevel'}, 
        #
        'Number' => $args{'Number'}, 
        #
        'RotationAngle' => $args{'RotationAngle'}, 
        #
        'Pattern' => $args{'Pattern'}, 
        #
        'TextDirection' => $args{'TextDirection'}, 
        #
        'VerticalAlignment' => $args{'VerticalAlignment'}, 
        #
        'HorizontalAlignment' => $args{'HorizontalAlignment'}, 
        #
        'BorderCollection' => $args{'BorderCollection'}, 
        #
        'link' => $args{'link'}
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
