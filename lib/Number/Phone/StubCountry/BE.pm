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
package Number::Phone::StubCountry::BE;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030225421;

my $formatters = [{'pattern' => '(4[6-9]\\d)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '4[6-9]'},{'pattern' => '([2-49])(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '[23]|[49][23]'},{'pattern' => '([15-8]\\d)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[156]|7[0178]|8(?:0[1-9]|[1-79])'},{'pattern' => '([89]\\d{2})(\\d{2})(\\d{3})','leading_digits' => '(?:80|9)0'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{5}','pager' => '','mobile' => '4(?:[679]\\d|8[3-9])\\d{6}','voip' => '','fixed_line' => '(?:1[0-69]|[23][2-8]|[49][23]|5\\d|6[013-57-9]|7[18])\\d{6}|8(?:0[1-9]|[1-69]\\d)\\d{5}','special_rate' => '(87\\d{6})|((?:90|7[07])\\d{6})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+32|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
