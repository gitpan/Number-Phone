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
package Number::Phone::StubCountry::PH;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140822223716;

my $formatters = [{'leading_digits' => '2','pattern' => '(2)(\\d{3})(\\d{4})'},{'pattern' => '(2)(\\d{5})','leading_digits' => '2'},{'leading_digits' => '3(?:230|397|461)|4(?:2(?:35|[46]4|51)|396|4(?:22|63)|59[347]|76[15])|5(?:221|446)|642[23]|8(?:622|8(?:[24]2|5[13]))','pattern' => '(\\d{4})(\\d{4,6})'},{'leading_digits' => '3469|4(?:279|9(?:30|56))|8834','pattern' => '(\\d{5})(\\d{4})'},{'leading_digits' => '[3-8]','pattern' => '([3-8]\\d)(\\d{3})(\\d{4})'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})','leading_digits' => '81|9'},{'pattern' => '(1800)(\\d{3})(\\d{4})','leading_digits' => '1'},{'pattern' => '(1800)(\\d{1,2})(\\d{3})(\\d{4})','leading_digits' => '1'}];
my $validators = {'special_rate' => '()|()|()','fixed_line' => '2\\d{5}(?:\\d{2})?|(?:3[2-68]|4[2-9]|5[2-6]|6[2-58]|7[24578]|8[2-8])\\d{7}|88(?:22\\d{6}|42\\d{4})','mobile' => '(?:81[37]|9(?:0[5-9]|1[024-9]|2[0-35-9]|3[02-9]|4[236-9]|7[34-79]|89|9[4-9]))\\d{7}','toll_free' => '1800\\d{7,9}','geographic' => '2\\d{5}(?:\\d{2})?|(?:3[2-68]|4[2-9]|5[2-6]|6[2-58]|7[24578]|8[2-8])\\d{7}|88(?:22\\d{6}|42\\d{4})','personal_number' => '','voip' => '','pager' => ''};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+63|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
