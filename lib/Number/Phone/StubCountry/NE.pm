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
package Number::Phone::StubCountry::NE;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '([029]\\d)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[29]|09'},{'pattern' => '(08)(\\d{3})(\\d{3})','leading_digits' => '08'}];
my $validators = {'personal_number' => '','toll_free' => '08\\d{6}','pager' => '','mobile' => '9[0134678]\\d{6}','voip' => '','fixed_line' => '2(?:0(?:20|3[1-7]|4[134]|5[14]|6[14578]|7[1-578])|1(?:4[145]|5[14]|6[14-68]|7[169]|88))\\d{4}','special_rate' => '()|(09\\d{6})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+227|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
