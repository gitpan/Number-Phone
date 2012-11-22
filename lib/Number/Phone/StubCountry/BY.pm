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
package Number::Phone::StubCountry::BY;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121122000027;

my $formatters = [{'pattern' => '([1-4]\\d)(\\d{3})(\\d{4})','leading_digits' => '[1-4]'},{'pattern' => '([89]\\d{2})(\\d{3})(\\d{4})','leading_digits' => '8[01]|9'},{'pattern' => '(8\\d{2})(\\d{4})(\\d{4})','leading_digits' => '82'}];
my $validators = {'personal_number' => '','toll_free' => '8(?:0[13]|20\\d)\\d{7}','pager' => '','mobile' => '(?:2(?:5[5679]|9[1-9])|33\\d|44\\d)\\d{6}','voip' => '','fixed_line' => '(?:1(?:5(?:1[1-5]|2\\d|6[1-4]|9[1-7])|6(?:[235]\\d|4[1-7])|7\\d{2})|2(?:1(?:[246]\\d|3[0-35-9]|5[1-9])|2(?:[235]\\d|4[0-8])|3(?:2\\d|3[02-79]|4[024-7]|5[0-7])))\\d{5}','special_rate' => '()|((?:810|902)\\d{7})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+375|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
