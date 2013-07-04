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
package Number::Phone::StubCountry::MT;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20130704221644;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '7117\\d{4}','mobile' => '(?:7(?:210|[79]\\d{2})|9(?:2[13]\\d|696|8(?:1[1-3]|89|97)|9\\d{2}))\\d{4}','voip' => '','fixed_line' => '2(?:0(?:1[0-6]|[69]\\d)|[1-357]\\d{2})\\d{4}','special_rate' => '()|(50(?:0(?:3[1679]|4\\d)|[169]\\d{2}|7[06]\\d)\\d{3})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+356|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
