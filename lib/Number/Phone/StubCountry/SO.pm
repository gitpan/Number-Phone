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
package Number::Phone::StubCountry::SO;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030162647;

my $formatters = [{'pattern' => '(\\d)(\\d{6})','leading_digits' => '2[0-79]|[13-5]'},{'pattern' => '(\\d)(\\d{7})','leading_digits' => '24|[67]'},{'pattern' => '(\\d{2})(\\d{5,7})','leading_digits' => '15|28|6[178]|9'},{'pattern' => '(69\\d)(\\d{6})','leading_digits' => '69'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '(?:15\\d|2(?:4\\d|8)|6[17-9]?\\d{2}|7\\d{2}|9[01]\\d)\\d{5}','voip' => '','fixed_line' => '(?:[134]\\d|2[0-79]|5[57-9])\\d{5}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2521 => 'Hargeisa',25251 => 'Mangauno',25261 => 'Mogadishu',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"252$prefix"} if exists($map{"252$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+252|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
