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
package Number::Phone::StubCountry::JO;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121027224531;

my $formatters = [{'pattern' => '(\\d)(\\d{3})(\\d{4})','leading_digits' => '[2356]|87'},{'pattern' => '(7)(\\d{4})(\\d{4})','leading_digits' => '7[457-9]'},{'pattern' => '(\\d{3})(\\d{5,6})','leading_digits' => '70|8[0158]|9'}];
my $validators = {'personal_number' => '70\\d{7}','toll_free' => '80\\d{6}','pager' => '74(?:66|77)\\d{5}','mobile' => '7(?:55|7[25-79]|8[5-8]|9[05-9])\\d{6}','voip' => '','fixed_line' => '(?:2(?:6(?:2[0-35-9]|3[0-57-8]|4[24-7]|5[0-24-8]|[6-9][02])|7(?:0[1-79]|10|2[014-7]|3[0-689]|4[019]|5[0-3578]))|32(?:0[1-69]|1[1-35-7]|2[024-7]|3\\d|[457][02]|60)|53(?:[013][02]|2[0-59]|49|5[0-35-9]|6[15]|7[45]|8[1-6]|9[0-36-9])|6(?:2[50]0|300|4(?:0[0125]|1[2-7]|2[0569]|[38][07-9]|4[025689]|6[0-589]|7\\d|9[0-2])|5(?:[01][056]|2[034]|3[0-57-9]|4[17-8]|5[0-69]|6[0-35-9]|7[1-379]|8[0-68]|9[02-39]))|87(?:[02]0|7[08]|9[09]))\\d{4}','special_rate' => '(85\\d{6})|(900\\d{5})|(8(?:10|8\\d)\\d{5})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+962|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
