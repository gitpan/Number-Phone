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
package Number::Phone::StubCountry::BZ;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141124170811;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})','leading_digits' => '[2-8]'},{'pattern' => '(0)(800)(\\d{4})(\\d{3})','leading_digits' => '0'}];
my $validators = {'toll_free' => '0800\\d{7}','mobile' => '6[0-367]\\d{5}','voip' => '','fixed_line' => '[234578][02]\\d{5}','special_rate' => '()|()|()','personal_number' => '','pager' => '','geographic' => '[234578][02]\\d{5}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+501|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
}

1;
