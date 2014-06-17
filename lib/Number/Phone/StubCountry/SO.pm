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
our $VERSION = 1.20140617214232;

my $formatters = [{'pattern' => '(\\d)(\\d{6})','leading_digits' => '2[0-79]|[13-5]'},{'leading_digits' => '24|[67]','pattern' => '(\\d)(\\d{7})'},{'leading_digits' => '15|28|6[1378]|9','pattern' => '(\\d{2})(\\d{5,7})'},{'leading_digits' => '69','pattern' => '(69\\d)(\\d{6})'}];
my $validators = {'pager' => '','fixed_line' => '(?:[134]\\d|2[0-79]|5[57-9])\\d{5}','voip' => '','special_rate' => '()|()|()','geographic' => '(?:[134]\\d|2[0-79]|5[57-9])\\d{5}','toll_free' => '','mobile' => '(?:15\\d|2(?:4\\d|8)|6[137-9]?\\d{2}|7\\d{2}|9(?:07|[13-9])\\d)\\d{5}','personal_number' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2521 => "Hargeisa",25251 => "Mangauno",25261 => "Mogadishu",);
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
