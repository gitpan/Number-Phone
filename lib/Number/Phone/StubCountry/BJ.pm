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
package Number::Phone::StubCountry::BJ;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140617214231;

my $formatters = [{'pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})'}];
my $validators = {'geographic' => '2(?:02|1[037]|2[45]|3[68])\\d{5}','personal_number' => '','mobile' => '(?:6[146-8]|9[03-9])\\d{6}','toll_free' => '7[3-5]\\d{2}','fixed_line' => '2(?:02|1[037]|2[45]|3[68])\\d{5}','pager' => '','special_rate' => '()|()|(81\\d{6})','voip' => '857[58]\\d{4}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2292021 => "Ongala",2292022 => "Kandi\Ã\©v\Ã\©",2292024 => "S\Ã\¨m\Ã\¨",2292025 => "Pob\Ã\¨\/K\Ã\©tou",2292026 => "Sak\Ã\©t\Ã\©\/Igolo",2292027 => "Adjohoun",2292029 => "Ou\Ã\©m\Ã\©\/Plateau\ departments",2292130 => "Cadjehoun",2292131 => "Ganhi",2292132 => "J\Ã\©richo",2292133 => "Akpakpa",2292134 => "Ouidah",2292135 => "Godomey",2292136 => "Abomey\-Calaci",2292137 => "Allada",2292138 => "Kouhounou",2292139 => "Littoral\/Atlantique\ departments",2292241 => "Lokossa",2292243 => "Come",2292246 => "Dogbo",2292249 => "Mono\/Kouffo\/Zou\/Collines\ departments",2292250 => "Abomey",2292251 => "Bohicon",2292252 => "Cov\Ã\¨",2292253 => "Dassa\-Zoum\Ã\©",2292254 => "Savalou",2292255 => "Sav\Ã\¨",2292259 => "Mono\/Kouffo\/Zou\/Collines\ departments",2292361 => "Parakou",2292362 => "Nikki\/Ndali",2292363 => "Kandi\/Gogounou\/S\Ã\©gbana",2292365 => "Banikoara",2292367 => "Malanville",2292380 => "Djougou",2292382 => "Natitingou",2292383 => "Tangui\Ã\©ta",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"229$prefix"} if exists($map{"229$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+229|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
