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
package Number::Phone::StubCountry::KN;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140617214232;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})'}];
my $validators = {'toll_free' => '8(?:00|44|55|66|77|88)[2-9]\\d{6}','personal_number' => '5(?:00|33|44|66|77)[2-9]\\d{6}','mobile' => '869(?:5(?:5[6-8]|6[5-7])|66\\d|76[02-6])\\d{4}','geographic' => '869(?:2(?:29|36)|302|4(?:6[015-9]|70))\\d{4}','voip' => '','special_rate' => '()|(900[2-9]\\d{6})|()','pager' => '','fixed_line' => '869(?:2(?:29|36)|302|4(?:6[015-9]|70))\\d{4}'};use Number::Phone::NANP::Data;sub areaname { Number::Phone::NANP::Data::areaname("1".shift()->{number}); }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+1|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
