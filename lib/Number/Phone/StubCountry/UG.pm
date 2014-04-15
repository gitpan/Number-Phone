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
package Number::Phone::StubCountry::UG;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140415215641;

my $formatters = [{'pattern' => '(\\d{3})(\\d{6})','leading_digits' => '[7-9]|20(?:[013-8]|2[5-9])|4(?:6[45]|[7-9])'},{'pattern' => '(\\d{2})(\\d{7})','leading_digits' => '3|4(?:[1-5]|6[0-36-9])'},{'leading_digits' => '2024','pattern' => '(2024)(\\d{5})'}];
my $validators = {'voip' => '','mobile' => '7(?:0[0-7]|[15789]\\d|[23]0|[46][0-4])\\d{6}','toll_free' => '800[123]\\d{5}','fixed_line' => '20(?:[0147]\\d{2}|2(?:40|[5-9]\\d)|3[23]\\d|5[0-4]\\d|6[03]\\d|8[0-2]\\d)\\d{4}|[34]\\d{8}','personal_number' => '','special_rate' => '()|(90[123]\\d{6})|()','pager' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (25641 => "Kampala",25643 => "Jinja",25645 => "Mbale",25646 => "Mityana",256464 => "Mubende",256465 => "Masindi",256471 => "Gulu",256473 => "Lira",256476 => "Arua",256481 => "Masaka",256483 => "Fort\ Portal",256485 => "Mbarara",256486 => "Kabale\/Rukungiri\/Kisoro",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"256$prefix"} if exists($map{"256$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+256|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
