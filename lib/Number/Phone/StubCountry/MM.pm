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
package Number::Phone::StubCountry::MM;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121122000027;

my $formatters = [{'pattern' => '(1)(\\d{3})(\\d{3})','leading_digits' => '1'},{'pattern' => '(1)(3)(33\\d)(\\d{3})','leading_digits' => '1333'},{'pattern' => '(2)(\\d{2})(\\d{3})','leading_digits' => '2'},{'pattern' => '(\\d{2})(\\d{3})(\\d{3})','leading_digits' => '67|81'},{'pattern' => '(\\d{2})(\\d{2})(\\d{3})','leading_digits' => '[4-8]'},{'pattern' => '(9)(\\d{3})(\\d{4,5})','leading_digits' => '9(?:[25-9]|4[1349])'},{'pattern' => '(9)(4\\d{4})(\\d{4})','leading_digits' => '94[0256]'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '9(?:[25689]|4(?:[0256]\\d|[1349])|7\\d)\\d{6}','voip' => '','fixed_line' => '(?:1\\d|2|4[2-6]|5[2-9]|6(?:[0-689]|7\\d?)|7[0-5]|8(?:[2-6]|1\\d?))\\d{5}|1333\\d{4}','special_rate' => '()|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+95|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
