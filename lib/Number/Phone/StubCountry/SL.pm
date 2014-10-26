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
package Number::Phone::StubCountry::SL;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140425182230;

my $formatters = [{'pattern' => '(\\d{2})(\\d{6})'}];
my $validators = {'mobile' => '(?:2[15]|3[034]|4[04]|5[05]|7[6-9]|88)\\d{6}','geographic' => '[235]2[2-4][2-9]\\d{4}','toll_free' => '','fixed_line' => '[235]2[2-4][2-9]\\d{4}','special_rate' => '()|()|()','pager' => '','voip' => '','personal_number' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (23222 => "Freetown",23232 => "Bo\/Kenema",23252 => "Makeni\/Koidu",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"232$prefix"} if exists($map{"232$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+232|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
