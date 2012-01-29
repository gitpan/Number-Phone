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
package Number::Phone::StubCountry::ID;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d{2})(\\d{7,8})','leading_digits' => '2[124]|[36]1'},{'pattern' => '(\\d{3})(\\d{5,7})','leading_digits' => '[4579]|2[035-9]|[36][02-9]'},{'pattern' => '(8\\d{2})(\\d{3,4})(\\d{3,4})','leading_digits' => '8[1-35-9]'},{'pattern' => '(177)(\\d{6,8})','leading_digits' => '1'},{'pattern' => '(800)(\\d{5,7})','leading_digits' => '800'},{'pattern' => '(809)(\\d)(\\d{3})(\\d{3})','leading_digits' => '809'}];
my $validators = {'personal_number' => '','toll_free' => '177\\d{6,8}|800\\d{5,7}','pager' => '','mobile' => '8[1-35-9]\\d{7,9}','voip' => '','fixed_line' => '2[124]\\d{7,8}|(?:2(?:[35][1-4]|6[0-8]|7[1-6]|8\\d|9[1-8])|3(?:1|2[1-578]|3[1-68]|4[1-3]|5[1-8]|6[1-3568]|7[0-46]|8\\d)|4(?:0[1-589]|1[01347-9]|2[0-36-8]|3[0-24-68]|5[1-378]|6[1-5]|7[134]|8[1245])|5(?:1[1-35-9]|2[25-8]|3[1246-9]|4[1-3589]|5[1-46]|6[1-8])|6(?:19?|[25]\\d|3[1-469]|4[1-6])|7(?:1[1-46-9]|2[14-9]|[36]\\d|4[1-8]|5[1-9]|7[0-36-9])|9(?:0[12]|1[0134-8]|2[0-479]|5[125-8]|6[23679]|7[159]|8[01346]))\\d{5,8}','special_rate' => '()|(809\\d{7})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+62|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
