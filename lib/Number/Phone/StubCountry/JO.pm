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
package Number::Phone::StubCountry::JO;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d)(\\d{3})(\\d{4})','leading_digits' => '[2356]|87'},{'pattern' => '(7)(\\d{4})(\\d{4})','leading_digits' => '7[457-9]'},{'pattern' => '(\\d{3})(\\d{5,6})','leading_digits' => '70|8[0158]|9'}];
my $validators = {'personal_number' => '70\\d{7}','toll_free' => '80\\d{6}','pager' => '74(?:66|77)\\d{5}','mobile' => '7(?:45|5\\d|7[2-79]|8[5-8]|9[035-9])\\d{6}','voip' => '','fixed_line' => '(?:2[67]|32|53|6[2-5]|87)\\d{6}','special_rate' => '(85\\d{6})|(900\\d{5})|(8(?:10|8\\d)\\d{5})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+962|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
