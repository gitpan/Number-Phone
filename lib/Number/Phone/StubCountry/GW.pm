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
package Number::Phone::StubCountry::GW;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20130704221644;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '[5-7]\\d{6}','voip' => '','fixed_line' => '3(?:2[0125]|3[1245]|4[12]|5[1-4]|70|9[1-467])\\d{4}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (245320 => "Bissau",245321 => "Bissau",245322 => "St\.\ Luzia",245325 => "Br\Ã\¡",245331 => "Mans\Ã\´a",245332 => "Bigene\/Bissora",245334 => "Mansaba",245335 => "Farim",245341 => "Bafat\Ã\¡",245342 => "Bambadinca",245351 => "Gabu",245352 => "Sonaco",245353 => "Pirada",245354 => "Pitche",245370 => "Buba",245391 => "Canchungo",245392 => "Cacheu",245393 => "S\.\ Domingos",245394 => "Bula",245396 => "Ingor\Ã\©",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"245$prefix"} if exists($map{"245$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+245|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
