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
package Number::Phone::StubCountry::ML;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141124170812;

my $formatters = [{'pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[246-9]'},{'pattern' => '(\\d{4})','leading_digits' => '67|74'}];
my $validators = {'toll_free' => '800\\d{5}','mobile' => '[67]\\d{7}|9[0-25-9]\\d{6}','voip' => '','fixed_line' => '(?:2(?:0(?:2[0-589]|7\\d)|1(?:2[5-7]|[3-689]\\d|7[2-4689]))|44[239]\\d)\\d{4}','special_rate' => '()|()|()','personal_number' => '','pager' => '','geographic' => '(?:2(?:0(?:2[0-589]|7\\d)|1(?:2[5-7]|[3-689]\\d|7[2-4689]))|44[239]\\d)\\d{4}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+223|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
}

1;
