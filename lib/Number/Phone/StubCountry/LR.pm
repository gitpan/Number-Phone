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
package Number::Phone::StubCountry::LR;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140617214232;

my $formatters = [{'pattern' => '(2\\d)(\\d{3})(\\d{3})','leading_digits' => '2'},{'leading_digits' => '[79]','pattern' => '([79]\\d{2})(\\d{3})(\\d{3})'},{'leading_digits' => '[4-6]','pattern' => '([4-6])(\\d{3})(\\d{3})'},{'pattern' => '(\\d{2})(\\d{3})(\\d{4})','leading_digits' => '[38]'}];
my $validators = {'toll_free' => '','personal_number' => '','mobile' => '(?:330\\d|4[67]|5\\d|77\\d{2}|88\\d{2}|994\\d)\\d{5}','geographic' => '2\\d{7}','voip' => '332(?:0[02]|5\\d)\\d{4}','special_rate' => '()|(90[03]\\d{6})|()','pager' => '','fixed_line' => '2\\d{7}'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+231|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
