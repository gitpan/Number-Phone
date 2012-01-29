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
package Number::Phone::StubCountry::BD;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(2)(\\d{7})','leading_digits' => '2'},{'pattern' => '(\\d{2})(\\d{4,6})','leading_digits' => '[3-79]1'},{'pattern' => '(\\d{3})(\\d{3,7})','leading_digits' => '[3-79][2-9]|8'},{'pattern' => '(\\d{4})(\\d{6})','leading_digits' => '1'}];
my $validators = {'personal_number' => '','toll_free' => '80[03]\\d{7}','pager' => '','mobile' => '(?:1[13-9]\\d|(?:3[78]|44)[02-9]|6(?:44|6[02-9]))\\d{7}','voip' => '','fixed_line' => '2(?:7(?:1[0-267]|2[0-289]|3[0-29]|[46][01]|5[1-3]|7[017]|91)|8(?:0[125]|[139][1-6]|2[0157-9]|6[1-35]|7[1-5]|8[1-8])|9(?:0[0-2]|1[1-4]|2[568]|3[3-6]|5[5-7]|6[0167]|7[15]|8[016-8]))\\d{4}|3(?:[6-8]1|(?:0[23]|[25][12]|82|416)\\d|(?:31|12?[5-7])\\d{2})\\d{3}|4(?:(?:02|[49]6|[68]1)|(?:0[13]|21\\d?|[23]2|[457][12]|6[28])\\d|(?:23|[39]1)\\d{2}|1\\d{3})\\d{3}|5(?:(?:[457-9]1|62)|(?:1\\d?|2[12]|3[1-3]|52)\\d|61{2})|6(?:[45]1|(?:11|2[15]|[39]1)\\d|(?:[06-8]1|62)\\d{2})|7(?:(?:32|91)|(?:02|31|[67][12])\\d|[458]1\\d{2}|21\\d{3})\\d{3}|8(?:(?:4[12]|[5-7]2|1\\d?)|(?:0|3[12]|[5-7]1|217)\\d)\\d{4}|9(?:[35]1|(?:[024]2|81)\\d|(?:1|[24]1)\\d{2})\\d{3}','special_rate' => '()|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+880|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
