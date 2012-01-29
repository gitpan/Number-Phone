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
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '([34679])(\\d{3})(\\d{4})','leading_digits' => '[3467]|9[1-9]'},{'pattern' => '(21)(\\d{4})(\\d{3,4})','leading_digits' => '21'},{'pattern' => '(22)(\\d{3})(\\d{4})','leading_digits' => '22'},{'pattern' => '([2589]\\d{2})(\\d{3})(\\d{3,4})','leading_digits' => '2[0247-9]|5|[89]00'},{'pattern' => '(\\d{2})(\\d{3})(\\d{3,4})','leading_digits' => '2[0169]|86'},{'pattern' => '(24099)(\\d{3})','leading_digits' => '240'},{'pattern' => '(24099)(\\d{3})','leading_digits' => '2409'},{'pattern' => '(24099)(\\d{3})','leading_digits' => '24099'}];
my $validators = {'personal_number' => '','toll_free' => '508\\d{6,7}|80\\d{6,8}','pager' => '[28]6\\d{6,7}','mobile' => '2(?:[079]\\d{7}|1(?:0\\d{5,7}|[12]\\d{5,6}|[3-9]\\d{5})|[28]\\d{7,8}|4[1-9]\\d{6})','voip' => '','fixed_line' => '(?:3[2-79]|[49][2-689]|6[235-9]|7[2-589])\\d{6}|24099\\d{3}','special_rate' => '()|(90\\d{7,9})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+64|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
