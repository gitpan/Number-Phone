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
package Number::Phone::StubCountry::PG;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030225421;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})','leading_digits' => '[1-689]'},{'pattern' => '(7[1-36]\\d)(\\d{2})(\\d{3})','leading_digits' => '7[1-36]'}];
my $validators = {'personal_number' => '','toll_free' => '180\\d{4}','pager' => '','mobile' => '(?:68|7[1236]\\d)\\d{5}','voip' => '275\\d{4}','fixed_line' => '(?:3\\d{2}|4[257]\\d|5[34]\\d|6(?:29|4[1-9])|85[02-46-9]|9[78]\\d)\\d{4}','special_rate' => '()|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+675|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
