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
package Number::Phone::StubCountry::NP;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [{'pattern' => '(1)(\\d{7})','leading_digits' => '1[2-6]'},{'pattern' => '(\\d{2})(\\d{6})','leading_digits' => '1[01]|[2-8]|9(?:[1-69]|7[15-9])'},{'leading_digits' => '9(?:7[45]|8)','pattern' => '(9\\d{2})(\\d{7})'}];
my $validators = {'toll_free' => '','personal_number' => '','geographic' => '(?:1[0124-6]|2[13-79]|3[135-8]|4[146-9]|5[135-7]|6[13-9]|7[15-9]|8[1-46-9]|9[1-79])\\d{6}','special_rate' => '()|()|()','voip' => '','pager' => '','mobile' => '9(?:7[45]|8[01456])\\d{7}','fixed_line' => '(?:1[0124-6]|2[13-79]|3[135-8]|4[146-9]|5[135-7]|6[13-9]|7[15-9]|8[1-46-9]|9[1-79])\\d{6}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+977|\D)//g;
  $number =~ s/(^0)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
