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
package Number::Phone::StubCountry::CK;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221722;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})'}];
my $validators = {'personal_number' => '','voip' => '','mobile' => '(?:5[0-68]|7\\d)\\d{3}','special_rate' => '()|()|()','fixed_line' => '(?:2\\d|3[13-7]|4[1-5])\\d{3}','toll_free' => '','pager' => '','geographic' => '(?:2\\d|3[13-7]|4[1-5])\\d{3}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+682|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
