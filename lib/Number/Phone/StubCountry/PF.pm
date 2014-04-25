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
our $VERSION = 1.20140425182230;

my $formatters = [{'leading_digits' => '89','pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})'},{'pattern' => '(\\d{2})(\\d{2})(\\d{2})'}];
my $validators = {'toll_free' => '','geographic' => '(?:4(?:[02-9]\\d|1[02-9])|[5689]\\d{2})\\d{3}','mobile' => '(?:[27]\\d{2}|3[0-79]\\d|411|89\\d{3})\\d{3}','pager' => '','voip' => '','special_rate' => '()|()|()','fixed_line' => '(?:4(?:[02-9]\\d|1[02-9])|[5689]\\d{2})\\d{3}','personal_number' => ''};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+689|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
