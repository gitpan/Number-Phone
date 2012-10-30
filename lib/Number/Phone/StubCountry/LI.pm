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
package Number::Phone::StubCountry::LI;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030225421;

my $formatters = [{'pattern' => '(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '[23]|7[3-57-9]|87'},{'pattern' => '(6\\d)(\\d{3})(\\d{3})','leading_digits' => '6'},{'pattern' => '(6[567]\\d)(\\d{3})(\\d{3})','leading_digits' => '6[567]'},{'pattern' => '(69)(7\\d{2})(\\d{4})','leading_digits' => '697'},{'pattern' => '([7-9]0\\d)(\\d{2})(\\d{2})','leading_digits' => '[7-9]0'},{'pattern' => '([89]0\\d)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[89]0'}];
my $validators = {'personal_number' => '701\\d{4}','toll_free' => '80(?:0(?:2[238]|79)|9\\d{2})\\d{2}','pager' => '','mobile' => '6(?:51[01]|6(?:[01][0-4]|2[016-9]|88|92)|710)\\d{5}|7(?:36|4[25]|56|[7-9]\\d)\\d{4}','voip' => '','fixed_line' => '(?:2(?:01|1[27]|3\\d|6[02-578]|96)|3(?:7[0135-7]|8[048]|9[0269])|870)\\d{4}','special_rate' => '(90(?:0(?:2[278]|79)|1(?:23|3[012])|6(?:4\\d|6[0126]))\\d{2})|()|(87(?:0[1289]|70)\\d{3})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+423|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
