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
package Number::Phone::StubCountry::SY;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140617214232;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})(\\d{3,4})','leading_digits' => '[1-5]'},{'leading_digits' => '9','pattern' => '(9\\d{2})(\\d{3})(\\d{3})'}];
my $validators = {'pager' => '','fixed_line' => '(?:1(?:1\\d?|4\\d|[2356])|2(?:1\\d?|[235])|3(?:[13]\\d|4)|4[13]|5[1-3])\\d{6}','voip' => '','special_rate' => '()|()|()','geographic' => '(?:1(?:1\\d?|4\\d|[2356])|2(?:1\\d?|[235])|3(?:[13]\\d|4)|4[13]|5[1-3])\\d{6}','mobile' => '9(?:22|[35][0-8]|4\\d|6[024-9]|88|9[0-489])\\d{6}','personal_number' => '','toll_free' => ''};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+963|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
