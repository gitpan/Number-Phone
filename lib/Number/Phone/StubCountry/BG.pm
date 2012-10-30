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
package Number::Phone::StubCountry::BG;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030162647;

my $formatters = [{'pattern' => '(2)(\\d{5})','leading_digits' => '29'},{'pattern' => '(2)(\\d{3})(\\d{3,4})','leading_digits' => '2'},{'pattern' => '(\\d{3})(\\d{4})','leading_digits' => '43[124-7]|70[1-9]'},{'pattern' => '(\\d{3})(\\d{3})(\\d{2})','leading_digits' => '43[124-7]|70[1-9]'},{'pattern' => '(\\d{3})(\\d{2})(\\d{3})','leading_digits' => '[78]00'},{'pattern' => '(\\d{2})(\\d{3})(\\d{2,3})','leading_digits' => '[356]|7[1-9]|8[1-6]|9[1-7]'},{'pattern' => '(\\d{2})(\\d{3})(\\d{3,4})','leading_digits' => '48|8[7-9]|9[08]'}];
my $validators = {'personal_number' => '700\\d{5}','toll_free' => '800\\d{5}','pager' => '','mobile' => '(?:8[7-9]|98)\\d{7}|4(?:3[0789]|8\\d)\\d{5}','voip' => '','fixed_line' => '2(?:[0-8]\\d{5,6}|9\\d{4,6})|(?:[36]\\d|5[1-9]|8[1-6]|9[1-7])\\d{5,6}|(?:4(?:[124-7]\\d|3[1-6])|7(?:0[1-9]|[1-9]\\d))\\d{4,5}','special_rate' => '()|(90\\d{6})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+359|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
