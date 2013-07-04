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
package Number::Phone::StubCountry::MU;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20130704221644;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '80[012]\\d{4}','pager' => '2(?:1[89]|2\\d)\\d{4}','mobile' => '(?:25\\d|4(?:2[12389]|9\\d)|7\\d{2}|8(?:20|7[15-8])|9[1-8]\\d)\\d{4}','voip' => '3(?:20|9\\d)\\d{4}','fixed_line' => '(?:2(?:[034789]\\d|1[0-7]|6[1-69])|4(?:[013-8]\\d|2[4-7])|[56]\\d{2}|8(?:14|3[129]))\\d{4}','special_rate' => '()|(30\\d{5})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2302 => "North\ Region",2304 => "Central\ Region",2306 => "South\ Region",230814 => "Agalega",23083 => "Rodrigues",23087 => "Rodrigues",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"230$prefix"} if exists($map{"230$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+230|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
