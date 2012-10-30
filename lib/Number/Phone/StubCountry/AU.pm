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
package Number::Phone::StubCountry::AU;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030162647;

my $formatters = [{'pattern' => '([2378])(\\d{4})(\\d{4})','leading_digits' => '[2378]'},{'pattern' => '(\\d{3})(\\d{3})(\\d{3})','leading_digits' => '[45]|14'},{'pattern' => '(16)(\\d{3})(\\d{2,4})','leading_digits' => '16'},{'pattern' => '(1[389]\\d{2})(\\d{3})(\\d{3})','leading_digits' => '1(?:[38]00|90)'},{'pattern' => '(180)(2\\d{3})','leading_digits' => '1802'},{'pattern' => '(19\\d)(\\d{3})','leading_digits' => '19[13]'},{'pattern' => '(19\\d{2})(\\d{4})','leading_digits' => '19[67]'},{'pattern' => '(13)(\\d{2})(\\d{2})','leading_digits' => '13[1-9]'}];
my $validators = {'personal_number' => '500\\d{6}','toll_free' => '180(?:0\\d{3}|2)\\d{3}','pager' => '16\\d{3,7}','mobile' => '14(?:5\\d|71)\\d{5}|4(?:[0-2]\\d|3[0-57-9]|4[47-9]|5[0-35-9]|6[6-9]|[79][07-9]|8[17-9])\\d{6}','voip' => '550\\d{6}','fixed_line' => '[237]\\d{8}|8(?:[68]\\d{3}|7[0-69]\\d{2}|9(?:[02-9]\\d{2}|1(?:[0-57-9]\\d|6[0135-9])))\\d{4}','special_rate' => '(13(?:00\\d{2})?\\d{4})|(19(?:0[0126]\\d{6}|[13-5]\\d{3}|[679]\\d{5}))|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+61|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
