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
package Number::Phone::StubCountry::EG;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d)(\\d{7,8})','leading_digits' => '[23]'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})','leading_digits' => '1(?:0[0169]|1[124]|2[0278]|5[0-2])|[89]00'},{'pattern' => '(\\d{2})(\\d{3})(\\d{4})','leading_digits' => '1(?:[0-246-9]|5[3-9])'},{'pattern' => '(\\d{2})(\\d{7})','leading_digits' => '13|[4-6]|[89][2-9]'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{7}','pager' => '','mobile' => '1(?:[0-246-9]|5[0-2])\\d{7}|1(?:0[0169]|1[124]|2[0278])\\d{7}','voip' => '','fixed_line' => '(?:1[35][23]|2[23]\\d|3\\d|4(?:0[2-4]|[578][23]|64)|5(?:0[234]|[57][23])|6[24-689]3|8(?:[28][2-4]|42|6[23])|9(?:[25]2|3[24]|6[23]|7[2-4]))\\d{6}|1[69]\\d{3}','special_rate' => '()|(900\\d{7})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2013 => 'Banha',2015 => '10th\ of\ Ramadan',202 => 'Cairo\/Giza\/Qalyubia',203 => 'Alexandria',2040 => 'Tanta',2045 => 'Damanhur',2046 => 'Marsa\ Matruh',2047 => 'Kafr\ El\-Sheikh',2048 => 'Monufia',2050 => 'Mansoura',2055 => 'Zagazig',2057 => 'Damiette',2062 => 'Suez',2064 => 'Ismailia',2065 => 'Red\ Sea',2066 => 'Port\ Said',2068 => 'El\-Arish',2069 => 'El\-Tor',2082 => 'Beni\ Suef',2084 => 'Fayoum',2086 => 'Minia',2088 => 'Assiout',2092 => 'Wadi\ El\-Gedid',2093 => 'Sohag',2095 => 'Luxor',2096 => 'Qunea',2097 => 'Aswan',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"20$prefix"} if exists($map{"20$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+20|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
