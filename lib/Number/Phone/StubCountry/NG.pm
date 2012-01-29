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
package Number::Phone::StubCountry::NG;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '([129])(\\d{3})(\\d{3,4})','leading_digits' => '[129]'},{'pattern' => '([3-8]\\d)(\\d{3})(\\d{2,3})','leading_digits' => '[3-6]|7(?:[1-79]|0[1-9])|8[2-9]'},{'pattern' => '([78]\\d{2})(\\d{3})(\\d{3,4})','leading_digits' => '70|8[01]'},{'pattern' => '([78]00)(\\d{4})(\\d{4,5})','leading_digits' => '[78]00'},{'pattern' => '([78]00)(\\d{5})(\\d{5,6})','leading_digits' => '[78]00'},{'pattern' => '(78)(\\d{2})(\\d{3})','leading_digits' => '78'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{7,11}','pager' => '','mobile' => '(?:70(?:[3-9]\\d|2[1-9])|8(?:0[2-9]|1[0235689])\\d)\\d{6}','voip' => '','fixed_line' => '[12]\\d{6,7}|9\\d{7}|(?:4[023568]|5[02368]|6[02-469]|7[569]|8[2-9])\\d{6}|(?:4[47]|5[14579]|6[1578]|7[0-357])\\d{5,6}|(?:78|41)\\d{5}','special_rate' => '()|()|(700\\d{7,11})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+234|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
