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
package Number::Phone::StubCountry::AZ;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121129182822;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '(?:1[28]|2(?:[45]2|[0-36])|365)'},{'pattern' => '(\\d{2})(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '[4-8]'},{'pattern' => '(\\d{3})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '9'}];
my $validators = {'personal_number' => '','toll_free' => '88\\d{7}','pager' => '','mobile' => '(?:4[04]|5[015]|60|7[07])\\d{7}','voip' => '','fixed_line' => '(?:1[28]\\d|2(?:02|1[24]|2[2-4]|33|[45]2|6[23])|365)\\d{6}','special_rate' => '()|(900200\\d{3})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+994|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
