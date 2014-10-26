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
package Number::Phone::StubCountry::UA;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121122000027;

my $formatters = [{'pattern' => '([3-69]\\d)(\\d{3})(\\d{4})','leading_digits' => '39|4(?:[45][0-5]|87)|5(?:0|6(?:3[14-7]|7)|7[37])|6[36-8]|9[1-9]'},{'pattern' => '([3-689]\\d{2})(\\d{3})(\\d{3})','leading_digits' => '3(?:[1-46-8]2[013-9]|52)|4[1378]2|5(?:[12457]2|6[24])|6(?:[49]2|[12][29]|5[24])|8|90'},{'pattern' => '([3-6]\\d{3})(\\d{5})','leading_digits' => '3(?:5[013-9]|[1-46-8](?:22|[013-9]))|4(?:[137][013-9]|6|[45][6-9]|8[4-6])|5(?:[1245][013-9]|6(?:3[02389]|[015689])|3|7[4-6])|6(?:[49][013-9]|5[0135-9]|[12][13-8])'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{6}','pager' => '','mobile' => '(?:39|50|6[36-8]|9[1-9])\\d{7}','voip' => '','fixed_line' => '(?:3[1-8]|4[13-8]|5[1-7]|6[12459])\\d{7}','special_rate' => '()|(900\\d{6})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+380|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
