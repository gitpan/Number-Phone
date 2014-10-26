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
package Number::Phone::StubCountry::WS;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140415215641;

my $formatters = [{'pattern' => '(8\\d{2})(\\d{3,4})','leading_digits' => '8'},{'leading_digits' => '7','pattern' => '(7\\d)(\\d{5})'}];
my $validators = {'pager' => '','special_rate' => '()|()|()','personal_number' => '','fixed_line' => '(?:[2-5]\\d|6[1-9]|84\\d{2})\\d{3}','toll_free' => '800\\d{3}','voip' => '','mobile' => '(?:60|7[25-7]\\d)\\d{4}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+685|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
