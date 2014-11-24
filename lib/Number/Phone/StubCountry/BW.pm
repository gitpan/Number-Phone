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
package Number::Phone::StubCountry::BW;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141124170811;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})','leading_digits' => '[2-6]'},{'pattern' => '(7\\d)(\\d{3})(\\d{3})','leading_digits' => '7'},{'pattern' => '(90)(\\d{5})','leading_digits' => '9'}];
my $validators = {'toll_free' => '','mobile' => '7(?:[1-356]\\d|4[0-7]|7[014-7])\\d{5}','voip' => '79[12][01]\\d{4}','fixed_line' => '(?:2(?:4[0-48]|6[0-24]|9[0578])|3(?:1[0235-9]|55|6\\d|7[01]|9[0-57])|4(?:6[03]|7[1267]|9[0-5])|5(?:3[0389]|4[0489]|7[1-47]|88|9[0-49])|6(?:2[1-35]|5[149]|8[067]))\\d{4}','special_rate' => '()|(90\\d{5})|()','personal_number' => '','pager' => '','geographic' => '(?:2(?:4[0-48]|6[0-24]|9[0578])|3(?:1[0235-9]|55|6\\d|7[01]|9[0-57])|4(?:6[03]|7[1267]|9[0-5])|5(?:3[0389]|4[0489]|7[1-47]|88|9[0-49])|6(?:2[1-35]|5[149]|8[067]))\\d{4}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (26724 => "Francistown",26726 => "Selebi\-Phikwe",26729 => "Letlhakane\/Orapa",26731 => "Gaborone\ \(outer\)",26739 => "Gaborone",267463 => "Serowe",26747 => "Mahalapye",26749 => "Palapye",26753 => "Lobatse",267539 => "Ramotswa",26754 => "Barolong\/Ngwaketse",26757 => "Mochudi",267588 => "Jwaneng",26759 => "Molepolole\/Kweneng",267625 => "Kasane",26765 => "Kgalagadi",267659 => "Gantsi",26768 => "Maun",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"267$prefix"} if exists($map{"267$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+267|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
}

1;
