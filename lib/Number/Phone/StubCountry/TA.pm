# automatically generated file, don't edit



# Copyright 2011 David Cantrell, derived from data from libphonenumber
# http://code.google.com/p/libphonenumber/
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
package Number::Phone::StubCountry::TA;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141125232349;

my $formatters = [];
my $validators = {'geographic' => '8\\d{3}','pager' => '','toll_free' => '','voip' => '','fixed_line' => '8\\d{3}','mobile' => 'NA','personal_number' => '','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2902 => "Jamestown",2903 => "St\.\ Helena",2904 => "St\.\ Helena",2906 => "St\.\ Helena",2907 => "St\.\ Helena",2908 => "Tristan\ da\ Cunha",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"290$prefix"} if exists($map{"290$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+290|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
