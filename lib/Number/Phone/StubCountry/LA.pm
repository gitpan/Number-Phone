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
package Number::Phone::StubCountry::LA;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140425182230;

my $formatters = [{'leading_digits' => '20','pattern' => '(20)(\\d{2})(\\d{3})(\\d{3})'},{'pattern' => '([2-8]\\d)(\\d{3})(\\d{3})','leading_digits' => '2[13]|[3-8]'}];
my $validators = {'voip' => '','pager' => '','fixed_line' => '(?:2[13]|[35-7][14]|41|8[1468])\\d{6}','special_rate' => '()|()|()','personal_number' => '','toll_free' => '','geographic' => '(?:2[13]|[35-7][14]|41|8[1468])\\d{6}','mobile' => '20(?:2[2389]|5[4-689]|7[6-8]|9[57-9])\\d{6}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+856|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
