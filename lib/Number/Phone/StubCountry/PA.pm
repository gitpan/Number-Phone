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
package Number::Phone::StubCountry::PA;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121129182822;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})','leading_digits' => '[1-57-9]'},{'pattern' => '(\\d{4})(\\d{4})','leading_digits' => '6'}];
my $validators = {'personal_number' => '','toll_free' => '80[09]\\d{4}','pager' => '','mobile' => '(?:1[16]1|21[89]|8(?:1[01]|7[23]))\\d{4}|6(?:[04-9]\\d|1[0-5]|2[0-6]|3[6-9])\\d{5}','voip' => '','fixed_line' => '(?:1(?:0[02-579]|19|2[37]|3[03]|4[479]|57|65|7[016-8]|8[58]|9[134])|2(?:[0235679]\\d|1[0-7]|4[04-9]|8[028])|3(?:0[0-7]|1[14-7]|2[0-3]|3[03]|4[0457]|5[56]|6[068]|7[078]|80|9\\d)|4(?:3[013-59]|4\\d|7[0-689])|5(?:[01]\\d|2[0-7]|[56]0|79)|7(?:0[09]|2[0-267]|[349]0|5[6-9]|7[0-24-7]|8[89])|8(?:[34]\\d|5[0-4]|8[02])|9(?:0[78]|1[0178]|2[0378]|3[379]|40|5[0489]|6[06-9]|7[046-9]|8[36-8]|9[1-9]))\\d{4}','special_rate' => '()|((?:779|8(?:2[235]|55|60|7[578]|86|95)|9(?:0[0-2]|81))\\d{4})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+507|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
