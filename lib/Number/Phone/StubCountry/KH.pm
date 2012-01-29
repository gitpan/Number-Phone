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
package Number::Phone::StubCountry::KH;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})(\\d{3,4})','leading_digits' => '1\\d[1-9]|[2-9]'},{'pattern' => '(1[89]00)(\\d{3})(\\d{3})','leading_digits' => '1[89]0'}];
my $validators = {'personal_number' => '','toll_free' => '1800(?:1\\d|2[019])\\d{4}','pager' => '','mobile' => '(?:(?:1[0-35-9]|6[6-9]|7[06-89])[1-9]|8(?:0[89]|5[2-689]|8\\d{2}|[13469]\\d|)|9(?:[0-689][1-9]|7[1-9]\\d?))\\d{5}','voip' => '','fixed_line' => '(?:2[3-6]|3[2-6]|4[2-4]|[567][2-5])[2-46-9]\\d{5}','special_rate' => '()|(1900(?:1\\d|2[09])\\d{4})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+855|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;