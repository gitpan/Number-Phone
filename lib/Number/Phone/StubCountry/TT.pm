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
package Number::Phone::StubCountry::TT;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})'}];
my $validators = {'fixed_line' => '868(?:2(?:01|2[1-5])|6(?:07|1[4-6]|2[1-9]|[3-6]\\d|7[0-79]|9[0-8])|82[12])\\d{4}','voip' => '','pager' => '','mobile' => '868(?:2(?:8[5-9]|9\\d)|3(?:0[1-9]|1[02-9]|[2-9]\\d)|4[6-9]\\d|6(?:20|78|8\\d)|7(?:1[02-9]|[02-9]\\d))\\d{4}','special_rate' => '()|(900[2-9]\\d{6})|()','personal_number' => '5(?:00|33|44|66|77)[2-9]\\d{6}','toll_free' => '8(?:00|44|55|66|77|88)[2-9]\\d{6}','geographic' => '868(?:2(?:01|2[1-5])|6(?:07|1[4-6]|2[1-9]|[3-6]\\d|7[0-79]|9[0-8])|82[12])\\d{4}'};use Number::Phone::NANP::Data;sub areaname { Number::Phone::NANP::Data::areaname("1".shift()->{number}); }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+1|\D)//g;
  $number =~ s/(^1)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
