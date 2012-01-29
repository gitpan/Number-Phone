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
package Number::Phone::StubCountry::LB;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d)(\\d{3})(\\d{3})','leading_digits' => '[13-6]|7(?:[2-57-9]|62)|[89][2-9]'},{'pattern' => '([7-9]\\d)(\\d{3})(\\d{3})','leading_digits' => '[89][01]|7(?:[01]|6[01346-9])'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '(?:3\\d|7(?:[01]\\d|6[01346-9]))\\d{5}','voip' => '','fixed_line' => '(?:[14-6]\\d{2}|7(?:[2-57-9]\\d|62)|[89][2-9]\\d)\\d{4}','special_rate' => '(8[01]\\d{6})|(9[01]\\d{6})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+961|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;