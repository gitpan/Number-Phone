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
package Number::Phone::StubCountry::SM;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [{'pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[5-7]'},{'pattern' => '(0549)(\\d{6})','leading_digits' => '0'},{'leading_digits' => '[89]','pattern' => '(\\d{6})'}];
my $validators = {'special_rate' => '()|(7[178]\\d{6})|()','toll_free' => '','personal_number' => '','geographic' => '0549(?:8[0157-9]|9\\d)\\d{4}','fixed_line' => '0549(?:8[0157-9]|9\\d)\\d{4}','pager' => '','voip' => '5[158]\\d{6}','mobile' => '6[16]\\d{6}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+378|\D)//g;
  $number =~ s/(^)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
