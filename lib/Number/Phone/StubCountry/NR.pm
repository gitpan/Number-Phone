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
package Number::Phone::StubCountry::NR;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141124170813;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})'}];
my $validators = {'toll_free' => '','mobile' => '55[5-9]\\d{4}','voip' => '','fixed_line' => '(?:444|888)\\d{4}','special_rate' => '()|()|()','personal_number' => '','pager' => '','geographic' => '(?:444|888)\\d{4}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+674|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
}

1;
