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
package Number::Phone::StubCountry::AE;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030225421;

my $formatters = [{'pattern' => '([2-4679])(\\d{3})(\\d{4})','leading_digits' => '[2-4679][2-8]'},{'pattern' => '(5[0256])(\\d{3})(\\d{4})','leading_digits' => '5'},{'pattern' => '([4679]00)(\\d)(\\d{5})','leading_digits' => '[4679]0'},{'pattern' => '(800)(\\d{2,9})','leading_digits' => '8'}];
my $validators = {'personal_number' => '','toll_free' => '400\\d{6}|800\\d{2,9}','pager' => '','mobile' => '5[0256]\\d{7}','voip' => '','fixed_line' => '(?:[2-4679][2-8]\\d|600[25])\\d{5}','special_rate' => '(700[05]\\d{5})|(900[02]\\d{5})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+971|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
