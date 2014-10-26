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
package Number::Phone::StubCountry::GN;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140425182229;

my $formatters = [{'leading_digits' => '3','pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})'},{'leading_digits' => '[67]','pattern' => '(\\d{3})(\\d{2})(\\d{2})(\\d{2})'}];
my $validators = {'personal_number' => '','pager' => '','voip' => '722\\d{6}','fixed_line' => '30(?:24|3[12]|4[1-35-7]|5[13]|6[189]|[78]1|9[1478])\\d{4}','special_rate' => '()|()|()','toll_free' => '','geographic' => '30(?:24|3[12]|4[1-35-7]|5[13]|6[189]|[78]1|9[1478])\\d{4}','mobile' => '6[02356]\\d{7}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2243024 => "Fria",2243031 => "Bok\�\�",2243032 => "Kamsar",2243041 => "Conakry",2243042 => "Conakry",2243043 => "Conakry",2243045 => "Conakry",2243046 => "Boussoura",2243047 => "Conakry",2243051 => "Lab\�\�",2243053 => "Pita",2243061 => "Kindia",22430613 => "T\�\�lim\�\�l\�\�",2243068 => "Mamou",2243069 => "Dalaba",2243071 => "Kankan",2243081 => "Faranah",2243091 => "N\'Z\�\�r\�\�kor\�\�",2243094 => "Macenta",2243097 => "Gu\�\�ck\�\�dou",2243098 => "Kissidougou",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"224$prefix"} if exists($map{"224$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+224|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
