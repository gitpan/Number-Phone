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
package Number::Phone::StubCountry::ZA;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140415215641;

my $formatters = [{'pattern' => '(860)(\\d{3})(\\d{3})','leading_digits' => '860'},{'leading_digits' => '[1-79]|8(?:[0-47]|6[1-9])','pattern' => '(\\d{2})(\\d{3})(\\d{4})'},{'leading_digits' => '8[1-4]','pattern' => '(\\d{2})(\\d{3,4})'},{'leading_digits' => '8[1-4]','pattern' => '(\\d{2})(\\d{3})(\\d{2,3})'}];
my $validators = {'pager' => '','special_rate' => '(860\\d{6})|(86[2-9]\\d{6}|90\\d{7})|(861\\d{6})','personal_number' => '','toll_free' => '80\\d{7}','fixed_line' => '(?:1[0-8]|2[0-378]|3[1-69]|4\\d|5[1346-8])\\d{7}','mobile' => '(?:6[0-5]|7[0-46-9])\\d{7}|8[1-4]\\d{3,7}','voip' => '87\\d{7}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2710 => "Johannesburg",2711 => "Johannesburg",2712 => "Tshwane",2713 => "Middelburg\/Witbank\/Nelspruit",2714 => "Rustenburg",2715 => "Polokwane",2716 => "Vaal\ Triangle",2717 => "Ermelo\/Secunda",2718 => "Potschefstroom\/Klerksdorp",2720 => "Fraserberg\/Leeugamka\/Merweville",2721 => "Cape\ Town",2722 => "Malmesbury\/Vredenburg",2723 => "Worcester\/Robertson",2727 => "Vredendal\/Springbok",2728 => "Hermanus\/Swellendam",2731 => "Durban",2732 => "Stanger",2733 => "Pietermaritzburg",2734 => "Newcastle\/Vryheid",2735 => "Zululand",2736 => "Ladysmith",2739 => "Eastern\ Pondoland\/Port\ Shepstone",2740 => "Bisho\/Alice",2741 => "Port\ Elizabeth",2742 => "Jeffreys\ Bay\/Humansdorp",2743 => "East\ London",2744 => "Garden\ Route",2745 => "Queenstown",2746 => "Grahamstown",2747 => "Mthatha\/Butterworth",2748 => "Cradock",2749 => "Graaff\-Reinet",2751 => "Bloemfontein\/Aliwal\ North",2753 => "Kimberley\/Kuruman",2754 => "Upington",2756 => "Parys",2757 => "Voorspoed\,\ Welkom\/Welkom\ Central\,\ Welkom",2758 => "Bethlehem",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"27$prefix"} if exists($map{"27$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+27|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
