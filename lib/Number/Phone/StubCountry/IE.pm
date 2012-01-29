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
package Number::Phone::StubCountry::IE;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(1)(\\d{3,4})(\\d{4})','leading_digits' => '1'},{'pattern' => '(\\d{2})(\\d{5})','leading_digits' => '2[2-9]|4[347]|5[2-58]|6[2-47-9]|9[3-9]'},{'pattern' => '(\\d{3})(\\d{5})','leading_digits' => '40[24]|50[45]'},{'pattern' => '(48)(\\d{4})(\\d{4})','leading_digits' => '48'},{'pattern' => '(818)(\\d{3})(\\d{3})','leading_digits' => '81'},{'pattern' => '(\\d{2})(\\d{3})(\\d{3,4})','leading_digits' => '[24-69]|7[14]'},{'pattern' => '([78]\\d)(\\d{3,4})(\\d{4})','leading_digits' => '76|8[35-9]'},{'pattern' => '(700)(\\d{3})(\\d{3})','leading_digits' => '70'},{'pattern' => '(\\d{4})(\\d{3})(\\d{3})','leading_digits' => '1(?:8[059]|5)'},{'pattern' => '(\\d{4})(\\d{3})(\\d{3})','leading_digits' => '1(?:8[059]0|5)'}];
my $validators = {'personal_number' => '700\\d{6}','toll_free' => '1800\\d{6}','pager' => '','mobile' => '8(?:22\\d{6}|[35-9]\\d{7,8})','voip' => '76\\d{7}','fixed_line' => '1\\d{7,8}|2(?:1\\d{6,7}|[24-9]\\d{5}|3\\d{5,7})|4(?:0[24]\\d{5}|[1269]\\d{7}|[34]\\d{5,7}|5\\d{6}|7\\d{5}|8[0-46-9]\\d{7})|5(?:0[45]\\d{5}|1\\d{6}|2\\d{5,7}|[3679]\\d{7}|8\\d{5})|6(?:1\\d{6}|4\\d{5,7}|[237-9]\\d{5}|[56]\\d{7})|7[14]\\d{7}|9(?:1\\d{6}|[04]\\d{7}|[3-9]\\d{5})','special_rate' => '(18[59]0\\d{6})|(15(?:1[2-9]|[2-8]0|59|9[089])\\d{6})|(818\\d{6})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+353|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
