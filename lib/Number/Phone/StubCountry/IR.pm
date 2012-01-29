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
package Number::Phone::StubCountry::IR;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(21)(\\d{3,5})','leading_digits' => '21'},{'pattern' => '(21)(\\d{3})(\\d{3,4})','leading_digits' => '21'},{'pattern' => '(21)(\\d{4})(\\d{4})','leading_digits' => '21'},{'pattern' => '(\\d{3})(\\d{3})(\\d{3,4})','leading_digits' => '[13-9]|2[02-9]'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '943[24678]\\d{6}','mobile' => '9(?:1\\d|3[124-9])\\d{7}','voip' => '993[12]\\d{6}','fixed_line' => '2(?:1[2-9]\\d{2,7}|51\\d{3,7})|(?:241|3(?:11|51)|441|5[14]1)\\d{4,7}|(?:3(?:34|41)|6(?:11|52))\\d{6,7}|(?:1(?:[134589][12]|[27][1-4])|2(?:2[189]|[3689][12]|42|5[256]|7[34])|3(?:12|2[1-4]|3[125]|4[24-9]|5[23]|[6-9][12])|4(?:[135-9][12]|2[1-467]|4[2-4])|5(?:12|2[89]|3[1-5]|4[2-8]|[5-7][12]|8[1245])|6(?:12|[347-9][12]|51|6[1-6])|7(?:[13589][12]|2[1289]|4[1-4]|6[1-6]|7[1-3])|8(?:[145][12]|3[124578]|6[1256]|7[1245]))\\d{7}','special_rate' => '()|()|(9990\\d{0,6})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+98|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
