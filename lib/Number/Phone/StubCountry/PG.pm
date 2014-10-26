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
package Number::Phone::StubCountry::PG;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [{'leading_digits' => '[13-689]|27','pattern' => '(\\d{3})(\\d{4})'},{'pattern' => '(\\d{4})(\\d{4})','leading_digits' => '20|7'}];
my $validators = {'mobile' => '(?:20150|68\\d{2}|7(?:[0-369]\\d|75)\\d{2})\\d{3}','pager' => '','voip' => '275\\d{4}','fixed_line' => '(?:3[0-2]\\d|4[25]\\d|5[34]\\d|64[1-9]|77(?:[0-24]\\d|30)|85[02-46-9]|9[78]\\d)\\d{4}','geographic' => '(?:3[0-2]\\d|4[25]\\d|5[34]\\d|64[1-9]|77(?:[0-24]\\d|30)|85[02-46-9]|9[78]\\d)\\d{4}','toll_free' => '180\\d{4}','personal_number' => '','special_rate' => '()|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+675|\D)//g;
  $number =~ s/(^)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
