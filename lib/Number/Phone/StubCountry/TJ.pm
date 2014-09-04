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
package Number::Phone::StubCountry::TJ;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [{'pattern' => '([349]\\d{2})(\\d{2})(\\d{4})','leading_digits' => '[34]7|91[78]'},{'pattern' => '([459]\\d)(\\d{3})(\\d{4})','leading_digits' => '4[48]|5|9(?:1[59]|[0235-9])'},{'leading_digits' => '331700','pattern' => '(331700)(\\d)(\\d{2})'},{'pattern' => '(\\d{4})(\\d)(\\d{4})','leading_digits' => '3(?:[1245]|3(?:[02-9]|1[0-589]))'}];
my $validators = {'special_rate' => '()|()|()','geographic' => '(?:3(?:1[3-5]|2[245]|3[12]|4[24-7]|5[25]|72)|4(?:46|74|87))\\d{6}','personal_number' => '','toll_free' => '','fixed_line' => '(?:3(?:1[3-5]|2[245]|3[12]|4[24-7]|5[25]|72)|4(?:46|74|87))\\d{6}','mobile' => '(?:50[15]|9[0-35-9]\\d)\\d{6}','pager' => '','voip' => ''};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+992|\D)//g;
  $number =~ s/(^8)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
