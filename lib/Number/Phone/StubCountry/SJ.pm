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
package Number::Phone::StubCountry::SJ;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121027224531;

my $formatters = [];
my $validators = {'personal_number' => '880\\d{5}','toll_free' => '80[01]\\d{5}','pager' => '','mobile' => '(?:4[015-8]|5[89]|9\\d)\\d{6}','voip' => '85[0-5]\\d{5}','fixed_line' => '79\\d{6}','special_rate' => '(810(?:0[0-6]|[2-8]\\d)\\d{3})|(82[09]\\d{5})|(0\\d{4}|81(?:0(?:0[7-9]|1\\d)|5\\d{2})\\d{3})'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+47|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
