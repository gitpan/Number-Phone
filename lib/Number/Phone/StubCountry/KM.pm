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
package Number::Phone::StubCountry::KM;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121122000027;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '3[234]\\d{5}','voip' => '','fixed_line' => '7(?:6[0-37-9]|7[0-57-9])\\d{4}','special_rate' => '()|((?:39[01]|9[01]0)\\d{4})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (269760 => "Domoni",269761 => "Mutsamudu",269762 => "Moh\Ã\©li",269763 => "Moroni",269767 => "Mb\Ã\©ni",269768 => "Mitsamiouli",269769 => "Foumbouni",269770 => "Domoni",269771 => "Mutsamudu",269772 => "Moh\Ã\©li",269773 => "Moroni",269774 => "Moroni",269775 => "Moroni",269777 => "Mb\Ã\©ni",269778 => "Mitsamiouli",269779 => "Foumbouni",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"269$prefix"} if exists($map{"269$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+269|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
