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
package Number::Phone::StubCountry::PF;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140822223716;

my $formatters = [{'leading_digits' => '4[09]|8[79]','pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})'},{'pattern' => '(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '44'}];
my $validators = {'special_rate' => '()|()|()','pager' => '','personal_number' => '','voip' => '','fixed_line' => '4(?:0[45689]\\d|4|99\\d)\\d{4}','toll_free' => '','mobile' => '8[79]\\d{6}','geographic' => '4(?:0[45689]\\d|4|99\\d)\\d{4}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+689|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
