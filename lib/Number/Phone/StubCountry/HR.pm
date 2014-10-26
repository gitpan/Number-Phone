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
package Number::Phone::StubCountry::HR;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140617214232;

my $formatters = [{'leading_digits' => '1','pattern' => '(1)(\\d{4})(\\d{3})'},{'leading_digits' => '6[09]','pattern' => '(6[09])(\\d{4})(\\d{3})'},{'pattern' => '(62)(\\d{3})(\\d{3,4})','leading_digits' => '62'},{'pattern' => '([2-5]\\d)(\\d{3})(\\d{3})','leading_digits' => '[2-5]'},{'pattern' => '(9\\d)(\\d{3})(\\d{3,4})','leading_digits' => '9'},{'leading_digits' => '9','pattern' => '(9\\d)(\\d{4})(\\d{4})'},{'leading_digits' => '9','pattern' => '(9\\d)(\\d{3,4})(\\d{3})(\\d{3})'},{'pattern' => '(\\d{2})(\\d{2})(\\d{2,3})','leading_digits' => '6[145]|7'},{'pattern' => '(\\d{2})(\\d{3,4})(\\d{3})','leading_digits' => '6[145]|7'},{'leading_digits' => '8','pattern' => '(80[01])(\\d{2})(\\d{2,3})'},{'leading_digits' => '8','pattern' => '(80[01])(\\d{3,4})(\\d{3})'}];
my $validators = {'geographic' => '1\\d{7}|(?:2[0-3]|3[1-5]|4[02-47-9]|5[1-3])\\d{6}','toll_free' => '80[01]\\d{4,7}','mobile' => '9[1257-9]\\d{6,10}','personal_number' => '7[45]\\d{4,7}','pager' => '','fixed_line' => '1\\d{7}|(?:2[0-3]|3[1-5]|4[02-47-9]|5[1-3])\\d{6}','voip' => '','special_rate' => '()|(6(?:[09]\\d{7}|[145]\\d{4,7}))|(62\\d{6,7})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+385|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
