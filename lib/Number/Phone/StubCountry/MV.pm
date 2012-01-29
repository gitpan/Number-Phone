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
package Number::Phone::StubCountry::MV;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})','leading_digits' => '[3467]|9(?:[1-9]|0[1-9])'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})','leading_digits' => '900'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '781\\d{4}','mobile' => '(?:46[46]|7[3-9]\\d|9[6-9]\\d)\\d{4}','voip' => '','fixed_line' => '(?:3(?:0[01]|3[0-59]|)|6(?:[567][02468]|8[024689]|90))\\d{4}','special_rate' => '()|(900\\d{7})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+960|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;