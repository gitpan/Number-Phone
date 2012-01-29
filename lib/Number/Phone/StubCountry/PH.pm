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
package Number::Phone::StubCountry::PH;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '(2)(\\d{3})(\\d{4})','leading_digits' => '2'},{'pattern' => '(\\d{4})(\\d{5})','leading_digits' => '3(?:23|39|46)|4(?:2[3-6]|[35]9|4[26]|76)|5(?:22|44)|642|8(?:62|8[245])'},{'pattern' => '(\\d{4})(\\d{5})','leading_digits' => '3(?:230|397|461)|4(?:2(?:35|[46]4|51)|396|4(?:22|63)|59[347]|76[15])|5(?:221|446)|642[23]|8(?:622|8(?:[24]2|5[13]))'},{'pattern' => '(\\d{5})(\\d{4})','leading_digits' => '346|4(?:27|9[35])|883'},{'pattern' => '(\\d{5})(\\d{4})','leading_digits' => '3469|4(?:279|9(?:30|56))|8834'},{'pattern' => '([3-8]\\d)(\\d{3})(\\d{4})','leading_digits' => '[3-8]'},{'pattern' => '(9\\d{2})(\\d{3})(\\d{4})','leading_digits' => '9'},{'pattern' => '(1800)(\\d{3})(\\d{4})','leading_digits' => '1'},{'pattern' => '(1800)(\\d{1,2})(\\d{3})(\\d{4})','leading_digits' => '1'}];
my $validators = {'personal_number' => '','toll_free' => '1800\\d{7,9}','pager' => '','mobile' => '9(?:0[5-9]|1[025-9]|2[0-36-9]|3[02-9]|4[236-9]|7[349]|89|9[49])\\d{7}','voip' => '','fixed_line' => '(?:2|3[2-68]|4[2-9]|5[2-6]|6[2-58]|7[24578]|8[2-8])\\d{7}','special_rate' => '()|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+63|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
