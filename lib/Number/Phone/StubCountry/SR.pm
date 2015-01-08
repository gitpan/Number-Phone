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
package Number::Phone::StubCountry::SR;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141124170813;

my $formatters = [{'pattern' => '(\\d{3})(\\d{3})','leading_digits' => '[2-4]|5[2-58]'},{'pattern' => '(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '56'},{'pattern' => '(\\d{3})(\\d{4})','leading_digits' => '59|[6-8]'}];
my $validators = {'toll_free' => '','mobile' => '(?:7[124-7]|8[1-9])\\d{5}','voip' => '5(?:6\\d{4}|90[0-4]\\d{3})','fixed_line' => '(?:2[1-3]|3[0-7]|4\\d|5[2-58]|68\\d)\\d{4}','special_rate' => '()|()|()','personal_number' => '','pager' => '','geographic' => '(?:2[1-3]|3[0-7]|4\\d|5[2-58]|68\\d)\\d{4}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+597|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
}

1;
