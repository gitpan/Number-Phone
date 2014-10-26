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
package Number::Phone::StubCountry::KI;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [];
my $validators = {'fixed_line' => '(?:[24]\\d|3[1-9]|50|8[0-5])\\d{3}','voip' => '','pager' => '','mobile' => '7(?:[24]\\d|3[1-9]|8[0-5])\\d{5}','special_rate' => '()|(3001\\d{4})|()','personal_number' => '','toll_free' => '','geographic' => '(?:[24]\\d|3[1-9]|50|8[0-5])\\d{3}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (68621 => "Bairiki",68622 => "Bairiki",68623 => "Bairiki",68624 => "Bairiki",68625 => "Betio",68626 => "Betio",68627 => "Tarawa",68628 => "Bikenibeu",68629 => "Bikenibeu",68630 => "Tarawa",68631 => "Abaokoro",68632 => "Abaokoro",68633 => "Abaiang",68634 => "Marakei",68635 => "Butaritari",68636 => "Makin",68637 => "Banaba",68638 => "Maiana",68639 => "Kuria",68640 => "Aranuka",68641 => "Abemama",68642 => "Nonouti",68643 => "Tabiteuea\ North",68644 => "Tabiteuea\ South",68645 => "Onotoa",68646 => "Beru",68647 => "Nikunau",68648 => "Tamana",68649 => "Arorae",68681 => "Kiritimati",68682 => "Kiritimati",68683 => "Fanning",68684 => "Washington",68685 => "Kanton",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"686$prefix"} if exists($map{"686$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+686|\D)//g;
  $number =~ s/(^)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
