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
package Number::Phone::StubCountry::AW;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221722;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})'}];
my $validators = {'personal_number' => '','voip' => '28\\d{5}|501\\d{4}','special_rate' => '()|(900\\d{4})|()','mobile' => '(?:5(?:6\\d|9[2-478])|6(?:[039]0|22|4[01]|6[0-2])|7[34]\\d|9(?:6[45]|9[4-8]))\\d{4}','pager' => '','geographic' => '5(?:2\\d|8[1-9])\\d{4}','fixed_line' => '5(?:2\\d|8[1-9])\\d{4}','toll_free' => '800\\d{4}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+297|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
