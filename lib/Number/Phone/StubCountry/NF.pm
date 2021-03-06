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
package Number::Phone::StubCountry::NF;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221723;

my $formatters = [{'leading_digits' => '1','pattern' => '(\\d{2})(\\d{4})'},{'pattern' => '(\\d)(\\d{5})','leading_digits' => '3'}];
my $validators = {'mobile' => '38\\d{4}','special_rate' => '()|()|()','fixed_line' => '(?:1(?:06|17|28|39)|3[012]\\d)\\d{3}','toll_free' => '','pager' => '','geographic' => '(?:1(?:06|17|28|39)|3[012]\\d)\\d{3}','voip' => '','personal_number' => ''};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+672|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
