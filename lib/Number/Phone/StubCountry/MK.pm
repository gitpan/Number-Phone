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
package Number::Phone::StubCountry::MK;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(2)(\\d{3})(\\d{4})','leading_digits' => '2'},{'pattern' => '([347]\\d)(\\d{3})(\\d{3})','leading_digits' => '[347]'},{'pattern' => '([58]\\d{2})(\\d)(\\d{2})(\\d{2})','leading_digits' => '[58]'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{5}','pager' => '','mobile' => '7[0-25-8]\\d{6}','voip' => '','fixed_line' => '(?:2(?:[23]\\d|5[125]|61)|3(?:1[3-6]|2[2-6]|3[2-5]|4[235])|4(?:[23][2-6]|4[3-6]|5[25]|6[25-8]|7[24-6]|8[4-6]))\\d{5}','special_rate' => '(8(?:0[1-9]|[1-9]\\d)\\d{5})|(5[02-9]\\d{6})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+389|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
