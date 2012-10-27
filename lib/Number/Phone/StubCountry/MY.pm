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
package Number::Phone::StubCountry::MY;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121027224531;

my $formatters = [{'pattern' => '([4-79])(\\d{3})(\\d{4})','leading_digits' => '[4-79]'},{'pattern' => '(3)(\\d{4})(\\d{4})','leading_digits' => '3'},{'pattern' => '([18]\\d)(\\d{3})(\\d{3,4})','leading_digits' => '1[02-46-9][1-9]|8'},{'pattern' => '(1)([36-8]00)(\\d{2})(\\d{4})','leading_digits' => '1[36-8]0'},{'pattern' => '(11)(\\d{4})(\\d{4})','leading_digits' => '11'},{'pattern' => '(154)(\\d{3})(\\d{4})','leading_digits' => '15'}];
my $validators = {'personal_number' => '1700\\d{6}','toll_free' => '1[38]00\\d{6}','pager' => '','mobile' => '1(?:[02-46-9][2-9]|1[12]\\d)\\d{6}','voip' => '154\\d{7}','fixed_line' => '(?:3\\d{2}|[4-79]\\d|8[2-9])\\d{6}','special_rate' => '()|(1600\\d{6})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+60|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
