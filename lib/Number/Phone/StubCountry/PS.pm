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
package Number::Phone::StubCountry::PS;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221723;

my $formatters = [{'leading_digits' => '[2489]','pattern' => '([2489])(2\\d{2})(\\d{4})'},{'pattern' => '(5[69]\\d)(\\d{3})(\\d{3})','leading_digits' => '5'},{'leading_digits' => '1[78]','pattern' => '(1[78]00)(\\d{3})(\\d{3})'}];
my $validators = {'personal_number' => '','voip' => '','toll_free' => '1800\\d{6}','fixed_line' => '(?:22[234789]|42[45]|82[01458]|92[369])\\d{5}','geographic' => '(?:22[234789]|42[45]|82[01458]|92[369])\\d{5}','pager' => '','special_rate' => '(1700\\d{6})|(1(?:4|9\\d)\\d{2})|()','mobile' => '5[69]\\d{7}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+970|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
