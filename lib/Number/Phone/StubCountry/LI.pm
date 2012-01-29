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
package Number::Phone::StubCountry::LI;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '[23]|7[4-9]|87'},{'pattern' => '(6\\d)(\\d{3})(\\d{3})','leading_digits' => '6'},{'pattern' => '([7-9]0\\d)(\\d{2})(\\d{2})','leading_digits' => '[7-9]0'},{'pattern' => '([89]0\\d)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[89]0'}];
my $validators = {'personal_number' => '701\\d{4}','toll_free' => '80(?:0(?:07|2[238]|79|\\d{4})|9\\d{2})\\d{2}','pager' => '','mobile' => '66(?:[0178][0-4]|2[025-9]|[36]\\d|4[129]|5[45]|9[019])\\d{5}|7(?:4[2-59]|56|[6-9]\\d)\\d{4}','voip' => '','fixed_line' => '(?:2(?:17|3\\d|6[02-58]|96)|3(?:02|7[01357]|8[048]|9[0269])|870)\\d{4}','special_rate' => '(90(?:0(?:2[278]|79|\\d{4})|1(?:23|\\d{4})|6(?:66|\\d{4}))\\d{2})|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+423|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
