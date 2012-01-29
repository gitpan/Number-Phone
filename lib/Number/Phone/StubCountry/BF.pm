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
package Number::Phone::StubCountry::BF;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '7(?:[02-68]\\d|1[0-4689]|7[0-6]|9[0-689])\\d{5}','voip' => '','fixed_line' => '(?:20(?:49|5[23]|9[016-9])|40(?:4[569]|55|7[0179])|50[34]\\d)\\d{4}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (22630 => 'Ouagadougou',22631 => 'Ouagadougou',22632 => 'Ouagadougou',22633 => 'Ouagadougou',22634 => 'Ouagadougou',22635 => 'Ouagadougou',22636 => 'Ouagadougou',22637 => 'Ouagadougou',22638 => 'Ouagadougou',22644 => 'Koudougou',22645 => 'Kaya',22649 => 'Kaya',22652 => 'D\Ã\©dougou',22653 => 'Tougan',22654 => 'Tougan',22655 => 'Ouahigouya',22656 => 'Ouahigouya',22666 => 'Dori',22670 => 'Koup\Ã\©la',22671 => 'Tenkodogo',22677 => 'Fada',22679 => 'Kantchari',22686 => 'Di\Ã\©bougou',22687 => 'Gaoua',22688 => 'Banfora',22696 => 'Orodara',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"226$prefix"} if exists($map{"226$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+226|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
