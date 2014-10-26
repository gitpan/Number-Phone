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
package Number::Phone::StubCountry::ME;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20130704221644;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})(\\d{3})','leading_digits' => '[2-57-9]|6(?:[389]|7(?:[0-8]|9[3-9]))'},{'pattern' => '(67)(9)(\\d{3})(\\d{3})','leading_digits' => '679[0-2]'}];
my $validators = {'personal_number' => '','toll_free' => '800[28]\\d{4}','pager' => '','mobile' => '6(?:32\\d|[89]\\d{2}|7(?:[0-8]\\d|9(?:[3-9]|[0-2]\\d)))\\d{4}','voip' => '78[1-9]\\d{5}','fixed_line' => '(?:20[2-8]|3(?:0[2-7]|1[35-7]|2[3567]|3[4-7])|4(?:0[237]|1[27])|5(?:0[47]|1[27]|2[378]))\\d{5}','special_rate' => '()|((?:88\\d|9(?:4[13-8]|5[16-8]))\\d{5})|(77\\d{6})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+382|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
