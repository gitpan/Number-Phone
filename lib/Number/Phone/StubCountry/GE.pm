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
package Number::Phone::StubCountry::GE;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141125232349;

my $formatters = [{'pattern' => '(\\d{3})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[348]'},{'pattern' => '(\\d{3})(\\d{3})(\\d{3})','leading_digits' => '7'},{'pattern' => '(\\d{3})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '5'}];
my $validators = {'voip' => '706\\d{6}','special_rate' => '()|()|()','personal_number' => '','mobile' => '5(?:14|5[01578]|68|7[0147-9]|9[0-35-9])\\d{6}','fixed_line' => '(?:3(?:[256]\\d|4[124-9]|7[0-4])|4(?:1\\d|2[2-7]|3[1-79]|4[2-8]|7[239]|9[1-7]))\\d{6}','geographic' => '(?:3(?:[256]\\d|4[124-9]|7[0-4])|4(?:1\\d|2[2-7]|3[1-79]|4[2-8]|7[239]|9[1-7]))\\d{6}','toll_free' => '800\\d{6}','pager' => ''};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+995|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
