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
package Number::Phone::StubCountry::QA;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221723;

my $formatters = [{'leading_digits' => '[28]','pattern' => '([28]\\d{2})(\\d{4})'},{'leading_digits' => '[3-7]','pattern' => '([3-7]\\d{3})(\\d{4})'}];
my $validators = {'personal_number' => '','voip' => '','pager' => '2(?:[12]\\d|61)\\d{4}','geographic' => '4[04]\\d{6}','fixed_line' => '4[04]\\d{6}','toll_free' => '800\\d{4}','special_rate' => '()|()|()','mobile' => '[3567]\\d{7}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+974|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
