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
package Number::Phone::StubCountry::SN;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [{'leading_digits' => '[379]','pattern' => '(\\d{2})(\\d{3})(\\d{2})(\\d{2})'},{'pattern' => '(\\d{3})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '8'}];
my $validators = {'mobile' => '7(?:[067]\\d|8[0-26]|90)\\d{6}','voip' => '3392\\d{5}|93330\\d{4}','pager' => '','fixed_line' => '3(?:0(?:1[0-2]|80)|2(?:11|82)|3(?:8[1-9]|9[3-9])|90[1-5])\\d{5}','geographic' => '3(?:0(?:1[0-2]|80)|2(?:11|82)|3(?:8[1-9]|9[3-9])|90[1-5])\\d{5}','personal_number' => '','toll_free' => '800\\d{6}','special_rate' => '(81[02468]\\d{6})|(88[4689]\\d{6})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (221338 => "Dakar",221339 => "Outside\ Dakar",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"221$prefix"} if exists($map{"221$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+221|\D)//g;
  $number =~ s/(^)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
