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
package Number::Phone::StubCountry::MG;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '3[02-4]\\d{7}','voip' => '','fixed_line' => '2(?:0(?:(?:2\\d|4[47]|5[3467]|6[279]|8[268]|9[245])\\d|7(?:2[29]|[35]\\d))|210\\d)\\d{4}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2612022 => 'Antananarivo',2612042 => 'Ambatolampy',2612044 => 'Antsirabe',2612047 => 'Ambositra',2612048 => 'Mid\-West\ Madagascar',2612053 => 'Toamasina',2612054 => 'Ambatondrazaka',2612056 => 'Moramanga',2612057 => 'Maroantsetra\/Sainte\ Marie',2612062 => 'Mahajanga',2612067 => 'Antsohihy',2612069 => 'Maintirano',26120722 => 'Manakara',26120729 => 'Mananjary',2612073 => 'Farafangana',2612075 => 'Fianarantsoa',2612082 => 'Antsiranana',2612086 => 'Nosy\ Be',2612088 => 'Sambava',2612092 => 'Taola\�\�aro',2612094 => 'Toliary',2612095 => 'Morondava',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"261$prefix"} if exists($map{"261$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+261|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;