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
package Number::Phone::StubCountry::CA;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221722;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})'}];
my $validators = {'special_rate' => '()|(900[2-9]\\d{6})|()','toll_free' => '8(?:00|44|55|66|77|88)[2-9]\\d{6}|310\\d{4}','pager' => '','geographic' => '((?:2(?:04|[23]6|[48]9|50)|3(?:06|43|65)|4(?:03|1[68]|3[178]|50)|5(?:06|1[49]|79|8[17])|6(?:0[04]|13|39|47)|7(?:0[59]|78|8[02])|8(?:[06]7|19|73)|90[25])[2-9]\\d{6}|310\\d{4}|(?:2(?:04|[23]6|[48]9|50)|3(?:06|43|65)|4(?:03|1[68]|3[178]|50)|5(?:06|1[49]|79|8[17])|6(?:0[04]|13|39|47)|7(?:0[59]|78|8[02])|8(?:[06]7|19|73)|90[25])[2-9]\\d{6})','personal_number' => '5(?:00|33|44|66|77)[2-9]\\d{6}','voip' => ''};use Number::Phone::NANP::Data;sub areaname { Number::Phone::NANP::Data::areaname("1".shift()->{number}); }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+1|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^1)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
