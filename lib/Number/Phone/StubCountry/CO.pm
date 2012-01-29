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
package Number::Phone::StubCountry::CO;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d)(\\d{7})','leading_digits' => '1(?:8[2-9]|9[0-3]|[2-7])|[24-8]'},{'pattern' => '(\\d)(\\d{7})','leading_digits' => '1(?:8[2-9]|9(?:09|[1-3])|[2-7])|[24-8]'},{'pattern' => '(\\d{3})(\\d{7})','leading_digits' => '3'},{'pattern' => '(1)(\\d{3})(\\d{7})','leading_digits' => '1(?:80|9[04])'},{'pattern' => '(1)(\\d{3})(\\d{7})','leading_digits' => '1(?:800|9(?:0[01]|4[78]))'}];
my $validators = {'personal_number' => '','toll_free' => '1800\\d{7}','pager' => '','mobile' => '3(?:0[0-24]|1[0-8]|2[01])\\d{7}','voip' => '','fixed_line' => '[124-8][2-9]\\d{6}','special_rate' => '()|(19(?:0[01]|4[78])\\d{7})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+57|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
