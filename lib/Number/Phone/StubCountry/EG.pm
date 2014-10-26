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
our $VERSION = 1.20140904220736;

my $formatters = [{'pattern' => '(\\d)(\\d{7,8})','leading_digits' => '[23]'},{'leading_digits' => '1[012]|[89]00','pattern' => '(\\d{3})(\\d{3})(\\d{4})'},{'leading_digits' => '1[35]|[4-6]|[89][2-9]','pattern' => '(\\d{2})(\\d{6,7})'}];
my $validators = {'geographic' => '(?:1(?:3[23]\\d|5(?:[23]|9\\d))|2[2-4]\\d{2}|3\\d{2}|4(?:0[2-5]|[578][23]|64)\\d|5(?:0[2-7]|[57][23])\\d|6[24-689]3\\d|8(?:2[2-57]|4[26]|6[237]|8[2-4])\\d|9(?:2[27]|3[24]|52|6[2356]|7[2-4])\\d)\\d{5}|1[69]\\d{3}','personal_number' => '','toll_free' => '800\\d{7}','special_rate' => '()|(900\\d{7})|()','mobile' => '1(?:0[0-269]|1[0-245]|2[0-278])\\d{7}','pager' => '','voip' => '','fixed_line' => '(?:1(?:3[23]\\d|5(?:[23]|9\\d))|2[2-4]\\d{2}|3\\d{2}|4(?:0[2-5]|[578][23]|64)\\d|5(?:0[2-7]|[57][23])\\d|6[24-689]3\\d|8(?:2[2-57]|4[26]|6[237]|8[2-4])\\d|9(?:2[27]|3[24]|52|6[2356]|7[2-4])\\d)\\d{5}|1[69]\\d{3}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2013 => "Banha",2015 => "10th\ of\ Ramadan",202 => "Cairo\/Giza\/Qalyubia",203 => "Alexandria",2040 => "Tanta",2045 => "Damanhur",2046 => "Marsa\ Matruh",2047 => "Kafr\ El\-Sheikh",2048 => "Monufia",2050 => "Mansoura",2055 => "Zagazig",2057 => "Damietta",2062 => "Suez",2064 => "Ismailia",2065 => "Red\ Sea",2066 => "Port\ Said",2068 => "El\-Arish",2069 => "El\-Tor",2082 => "Beni\ Suef",2084 => "Fayoum",2086 => "Minia",2088 => "Assiout",2092 => "Wadi\ El\-Gedid",2093 => "Sohag",2095 => "Luxor",2096 => "Qena",2097 => "Aswan",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"20$prefix"} if exists($map{"20$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+20|\D)//g;
  $number =~ s/(^0)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
