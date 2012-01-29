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
package Number::Phone::StubCountry::AO;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '9[1-3]\\d{7}','voip' => '','fixed_line' => '2\\d(?:[26-9]\\d|\\d[26-9])\\d{5}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (24431 => 'Cabinda',24432 => 'Zaire',244321 => 'Soyo',24433 => 'Uige',24434 => 'Bengo',244348 => 'Caxito',24435 => 'Cuanza\ Norte',244358 => 'N\'Dalatando',24436 => 'Cuanza\ Sul',244363 => 'Sumbe',244364 => 'Porto\ Amboim',24441 => 'Huambo',24448 => 'Bie',244485 => 'Kuito',24449 => 'Cuando\ Cubango',24451 => 'Malange',244526 => 'Dundo',24453 => 'Lunda\ Sul',244535 => 'Saurimo',24454 => 'Moxico',244546 => 'Luena',24461 => 'Huila',244612 => 'Lubango',24464 => 'Namibe',244643 => 'Tombua',24465 => 'Cunene',244652 => 'St\.\ Clara\/Cunene',244655 => 'Ondjiva',24472 => 'Benguela',244722 => 'Lobito',244726 => 'Bela\ Vista',244728 => 'Baia\ Farta',244729 => 'Catumbela',244777 => 'Dama\ Universal',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"244$prefix"} if exists($map{"244$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+244|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
