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
package Number::Phone::StubCountry::CU;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221722;

my $formatters = [{'leading_digits' => '7','pattern' => '(\\d)(\\d{6,7})'},{'pattern' => '(\\d{2})(\\d{4,6})','leading_digits' => '[2-4]'},{'leading_digits' => '5','pattern' => '(\\d)(\\d{7})'}];
my $validators = {'mobile' => '5\\d{7}','special_rate' => '()|()|()','geographic' => '2[1-4]\\d{5,6}|3(?:1\\d{6}|[23]\\d{4,6})|4(?:[125]\\d{5,6}|[36]\\d{6}|[78]\\d{4,6})|7\\d{6,7}','pager' => '','toll_free' => '','fixed_line' => '2[1-4]\\d{5,6}|3(?:1\\d{6}|[23]\\d{4,6})|4(?:[125]\\d{5,6}|[36]\\d{6}|[78]\\d{4,6})|7\\d{6,7}','voip' => '','personal_number' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (5321 => "Guant\�\�namo\ Province",5322 => "Santiago\ de\ Cuba\ Province",5323 => "Granma\ Province",5324 => "Holgu\�\�n\ Province",5331 => "Las\ Tunas\ Province",5332 => "Camag\�\�ey\ Province",5333 => "Ciego\ de\ \�\�vila\ Province",5341 => "Sancti\ Sp\�\�ritus\ Province",5342 => "Villa\ Clara\ Province",5343 => "Cienfuegos\ Province",5345 => "Matanzas\ Province",5346 => "Isle\ of\ Youth",5347 => "Havana\ Province",5348 => "Pinar\ del\ R\�\�o\ Province",537 => "Havana\ City",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"53$prefix"} if exists($map{"53$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+53|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
