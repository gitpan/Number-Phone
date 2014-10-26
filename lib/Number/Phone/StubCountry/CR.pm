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
package Number::Phone::StubCountry::CR;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140822223715;

my $formatters = [{'pattern' => '(\\d{4})(\\d{4})','leading_digits' => '[24-7]|8[3-9]'},{'leading_digits' => '[89]0','pattern' => '(\\d{3})(\\d{3})(\\d{4})'}];
my $validators = {'special_rate' => '()|(90[059]\\d{7})|()','pager' => '','voip' => '210[0-6]\\d{4}|4(?:0(?:0[01]\\d{4}|10[0-3]\\d{3}|2900\\d{2}|3[01]\\d{4}|40\\d{4}|5\\d{5}|70[01]\\d{3}|8[0-2]\\d{4})|1[01]\\d{5}|20[0-3]\\d{4}|400\\d{4}|70[0-2]\\d{4})|5100\\d{4}','personal_number' => '','geographic' => '2[24-7]\\d{6}','toll_free' => '800\\d{7}','mobile' => '57[0-3]\\d{5}|6(?:[0-2]\\d|30)\\d{5}|7[0-3]\\d{6}|8[3-9]\\d{6}','fixed_line' => '2[24-7]\\d{6}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+506|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
