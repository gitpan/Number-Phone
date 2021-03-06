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
package Number::Phone::StubCountry::SB;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221723;

my $formatters = [{'leading_digits' => '[7-9]','pattern' => '(\\d{2})(\\d{5})'}];
my $validators = {'special_rate' => '()|()|()','mobile' => '48\\d{3}|7(?:[0146-8]\\d|5[025-9]|9[0124])\\d{4}|8[4-8]\\d{5}|9(?:[46]\\d|5[0-46-9]|7[0-689]|8[0-79]|9[0-8])\\d{4}','pager' => '','geographic' => '(?:1[4-79]|[23]\\d|4[01]|5[03]|6[0-37])\\d{3}','fixed_line' => '(?:1[4-79]|[23]\\d|4[01]|5[03]|6[0-37])\\d{3}','toll_free' => '1[38]\\d{3}','voip' => '5[12]\\d{3}','personal_number' => ''};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+677|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
