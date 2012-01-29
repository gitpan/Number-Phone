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
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '(?:1[28]|2(?:[45]2|[0-36])|365)'},{'pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '22'},{'pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '36[0-46-9]'},{'pattern' => '(\\d{3})(\\d)(\\d{2})(\\d{2})','leading_digits' => '1[013-79]|2(?:[45][13-9]|[7-9])'},{'pattern' => '(\\d{2})(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '[4-8]'},{'pattern' => '(\\d{3})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '9'}];
my $validators = {'personal_number' => '','toll_free' => '88\\d{7}','pager' => '','mobile' => '(?:[46]0|5[015]|7[07])\\d{7}','voip' => '','fixed_line' => '(?:1(?:(?:[28]\\d|9)\\d|02|1[0-589]|3[358]|4[013-79]|5[0-479]|6[02346-9]|7[0-24-8])|2(?:02\\d|1(?:2[0-8]|42|6)|2(?:2[0-79]|3[0-35]|42|[1-35-9]|)|3(?:3[0-58]|[0-24])|4(?:2[0124579]|[1468])|5(?:2[0124579]|5)|6(?:2\\d|3[0128]|[56])|79)|365?\\d|44\\d{2})\\d{5}','special_rate' => '()|(900200\\d{3})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+994|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
