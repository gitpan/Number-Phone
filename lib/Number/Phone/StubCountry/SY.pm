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
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})(\\d{3,4})','leading_digits' => '[1-5]'},{'pattern' => '(9[3-689])(\\d{4})(\\d{3})','leading_digits' => '9'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '9(?:3[23]|4[457]|55|6[67]|88|9[1-49])\\d{6}','voip' => '','fixed_line' => '(?:1(?:1\\d?|4\\d|[2356])|2[1-35]|3(?:[13]\\d|4)|4[13]|5[1-3])\\d{6}','special_rate' => '()|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+963|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
