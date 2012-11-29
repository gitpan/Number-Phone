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
package Number::Phone::StubCountry::TZ;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121129182822;

my $formatters = [{'pattern' => '([24]\\d)(\\d{3})(\\d{4})','leading_digits' => '[24]'},{'pattern' => '([67]\\d{2})(\\d{3})(\\d{3})','leading_digits' => '[67]'},{'pattern' => '([89]\\d{2})(\\d{2})(\\d{4})','leading_digits' => '[89]'}];
my $validators = {'personal_number' => '','toll_free' => '80[08]\\d{6}','pager' => '','mobile' => '(?:6[158]|7[1-9])\\d{7}','voip' => '41\\d{7}','fixed_line' => '2[2-8]\\d{7}','special_rate' => '(8(?:40|6[01])\\d{6})|(90\\d{7})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+255|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
