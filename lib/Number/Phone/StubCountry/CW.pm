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
package Number::Phone::StubCountry::CW;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20130704221644;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})','leading_digits' => '[13-7]'},{'pattern' => '(9)(\\d{3})(\\d{4})','leading_digits' => '9'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '955\\d{5}','mobile' => '9(?:5(?:[1246]\\d|3[01])|6(?:[1679]\\d|3[01]))\\d{4}','voip' => '','fixed_line' => '9(?:[48]\\d{2}|50\\d|7(?:2[0-2]|[34]\\d|6[35-7]|77))\\d{4}','special_rate' => '((?:10|69)\\d{5})|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+599|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
