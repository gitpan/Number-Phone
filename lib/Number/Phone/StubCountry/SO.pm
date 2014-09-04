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
our $VERSION = 1.20140904220737;

my $formatters = [{'leading_digits' => '2[0-79]|[13-5]','pattern' => '(\\d)(\\d{6})'},{'pattern' => '(\\d)(\\d{7})','leading_digits' => '24|[67]'},{'leading_digits' => '15|28|6[1378]','pattern' => '(\\d{2})(\\d{5,7})'},{'pattern' => '(69\\d)(\\d{6})','leading_digits' => '69'},{'pattern' => '(90\\d)(\\d{3})(\\d{3})','leading_digits' => '90'}];
my $validators = {'geographic' => '(?:1\\d|2[0-79]|3[0-46-8]|4[0-7]|59)\\d{5}','toll_free' => '','personal_number' => '','special_rate' => '()|()|()','mobile' => '(?:15\\d|2(?:4\\d|8)|6[137-9]?\\d{2}|7[1-9]\\d|907\\d)\\d{5}','pager' => '','voip' => '','fixed_line' => '(?:1\\d|2[0-79]|3[0-46-8]|4[0-7]|59)\\d{5}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2521 => "Hargeisa",25251 => "Mangauno",25261 => "Mogadishu",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"252$prefix"} if exists($map{"252$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+252|\D)//g;
  $number =~ s/(^0)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
