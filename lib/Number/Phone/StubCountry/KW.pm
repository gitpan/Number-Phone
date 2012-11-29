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
package Number::Phone::StubCountry::KW;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121129182822;

my $formatters = [{'pattern' => '(\\d{4})(\\d{3,4})','leading_digits' => '[1269]'},{'pattern' => '(5[015]\\d)(\\d{5})','leading_digits' => '5'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '(?:5(?:0[0-25-9]|11|5\\d)|6(?:0[034679]|5[015-9]|6\\d|7[067]|9[069])|9(?:0[09]|4[049]|6[69]|[79]\\d))\\d{5}','voip' => '','fixed_line' => '(?:18\\d|2(?:[23]\\d{2}|4(?:[1-35-9]\\d|44)|5(?:0[034]|[2-46]\\d|5[1-3]|7[1-7])))\\d{4}','special_rate' => '()|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+965|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
