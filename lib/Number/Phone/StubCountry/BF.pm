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
our $VERSION = 1.20121030225421;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '(?:6(?:[05]\\d|1[01]|6[0-7]|8[0-2])|7(?:[02-68]\\d|1[0-4689]|7[0-69]|9[0-689]))\\d{5}','voip' => '','fixed_line' => '(?:20(?:49|5[23]|9[016-9])|40(?:4[56]|5[4-6]|7[0179])|50[34]\\d)\\d{4}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2262049 => 'Kaya',2262052 => 'D\Ã\©dougou',2262053 => 'Boromo\/Djibasso\/Nouna',2262090 => 'Gaoua',2262091 => 'Banfora',2262096 => 'Orodara',2262097 => 'Bobo\-Dioulasso',2262098 => 'Bobo\-Dioulasso',2262099 => 'B\Ã\©r\Ã\©ba\/Fo\/Hound\Ã\©',2264045 => 'Kaya',2264046 => 'Falagountou\/Dori',2264054 => 'Yako',2264055 => 'Ouahigouya',2264056 => 'Djibo',2264070 => 'Pouytenga\/Koup\Ã\©la',2264071 => 'Tenkodogo',2264077 => 'Fada\/Diabo',2264079 => 'Kantchari',226503 => 'Ouagadougou',2265040 => 'P\Ã\´\/Kombissiri\/Koubri',2265041 => 'L\Ã\©o\/Sapouy',2265042 => 'Ouagadougou',2265043 => 'Ouagadougou',2265044 => 'Koudougou',2265045 => 'Ouagadougou',2265046 => 'Ouagadougou',2265047 => 'Ouagadougou',2265048 => 'Ouagadougou',2265049 => 'Ouagadougou',);
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
