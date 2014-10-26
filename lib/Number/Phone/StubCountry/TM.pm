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
package Number::Phone::StubCountry::TM;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030162647;

my $formatters = [{'pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '12'},{'pattern' => '(\\d{2})(\\d{6})','leading_digits' => '6'},{'pattern' => '(\\d{3})(\\d)(\\d{2})(\\d{2})','leading_digits' => '13|[2-5]'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '6[3-8]\\d{6}','voip' => '','fixed_line' => '(?:1(?:2\\d|3[1-9])|2(?:22|4[0-35-8])|3(?:22|4[03-9])|4(?:22|3[128]|4\\d|6[15])|5(?:22|5[7-9]|6[014-689]))\\d{5}','special_rate' => '()|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+993|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
