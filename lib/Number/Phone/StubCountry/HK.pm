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
package Number::Phone::StubCountry::HK;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d{4})(\\d{4})','leading_digits' => '[235-7]|[89](?:0[1-9]|[1-9])'},{'pattern' => '(800)(\\d{3})(\\d{3})','leading_digits' => '800'},{'pattern' => '(900)(\\d{2})(\\d{3})(\\d{3})','leading_digits' => '900'}];
my $validators = {'personal_number' => '8[1-3]\\d{6}','toll_free' => '800\\d{6}','pager' => '','mobile' => '[5-79]\\d{7}','voip' => '','fixed_line' => '[23]\\d{7}','special_rate' => '()|(900\\d{8})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+852|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;