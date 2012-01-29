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
package Number::Phone::StubCountry::TH;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '(2)(\\d{3})(\\d{4})','leading_digits' => '2'},{'pattern' => '([3-7]\\d)(\\d{3})(\\d{3,4})','leading_digits' => '[3-7]'},{'pattern' => '([89])(\\d{4})(\\d{4})','leading_digits' => '[89]'},{'pattern' => '(1[89]00)(\\d{3})(\\d{3})','leading_digits' => '1'}];
my $validators = {'personal_number' => '','toll_free' => '1800\\d{6}','pager' => '','mobile' => '[89]\\d{8}','voip' => '60\\d{7}','fixed_line' => '(?:2[1-9]|3[2-9]|4[2-5]|5[2-6]|7[3-7])\\d{6}','special_rate' => '()|(1900\\d{6})|(1\\d{3})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+66|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
