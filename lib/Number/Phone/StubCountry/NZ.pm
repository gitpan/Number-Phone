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
package Number::Phone::StubCountry::NZ;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141124170813;

my $formatters = [{'pattern' => '([34679])(\\d{3})(\\d{4})','leading_digits' => '[3467]|9[1-9]'},{'pattern' => '(24099)(\\d{3})','leading_digits' => '24099'},{'pattern' => '(\\d{2})(\\d{3})(\\d{3})','leading_digits' => '21'},{'pattern' => '(\\d{2})(\\d{3})(\\d{3,5})','leading_digits' => '2(?:1[1-9]|[69]|7[0-35-9])|86'},{'pattern' => '(2\\d)(\\d{3,4})(\\d{4})','leading_digits' => '2[028]'},{'pattern' => '(\\d{3})(\\d{3})(\\d{3,4})','leading_digits' => '2(?:10|74)|5|[89]0'}];
my $validators = {'toll_free' => '508\\d{6,7}|80\\d{6,8}','mobile' => '2(?:[028]\\d{7,8}|1(?:[03]\\d{5,7}|[12457]\\d{5,6}|[689]\\d{5})|[79]\\d{7})','voip' => '','fixed_line' => '(?:3[2-79]|[49][2-689]|6[235-9]|7[2-5789])\\d{6}|24099\\d{3}','special_rate' => '()|(90\\d{7,9})|()','personal_number' => '','pager' => '[28]6\\d{6,7}','geographic' => '(?:3[2-79]|[49][2-689]|6[235-9]|7[2-5789])\\d{6}|24099\\d{3}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+64|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
