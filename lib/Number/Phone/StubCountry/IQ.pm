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
package Number::Phone::StubCountry::IQ;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221723;

my $formatters = [{'leading_digits' => '1','pattern' => '(1)(\\d{3})(\\d{4})'},{'pattern' => '([2-6]\\d)(\\d{3})(\\d{3,4})','leading_digits' => '[2-6]'},{'pattern' => '(7\\d{2})(\\d{3})(\\d{4})','leading_digits' => '7'}];
my $validators = {'voip' => '','personal_number' => '','special_rate' => '()|()|()','mobile' => '7[3-9]\\d{8}','toll_free' => '','fixed_line' => '1\\d{7}|(?:2[13-5]|3[02367]|4[023]|5[03]|6[026])\\d{6,7}','geographic' => '1\\d{7}|(?:2[13-5]|3[02367]|4[023]|5[03]|6[026])\\d{6,7}','pager' => ''};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+964|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
