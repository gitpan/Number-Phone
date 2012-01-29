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
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '(860)(\\d{3})(\\d{3})','leading_digits' => '860'},{'pattern' => '([1-578]\\d)(\\d{3})(\\d{4})','leading_digits' => '[1-57]|8(?:[0-57-9]|6[1-9])'},{'pattern' => '(\\d{2})(\\d{3,4})','leading_digits' => '7|8[1-5789]'},{'pattern' => '(\\d{2})(\\d{3})(\\d{2,3})','leading_digits' => '7|8[1-5789]'}];
my $validators = {'personal_number' => '','toll_free' => '80\\d{7}','pager' => '','mobile' => '(?:7[1-4689]|8[1-5789])\\d{3,7}','voip' => '87\\d{7}','fixed_line' => '(?:1[0-8]|2[1-478]|3[1-69]|4\\d|5[1346-8])\\d{7}','special_rate' => '(860\\d{6})|(86[1-9]\\d{6})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2710 => 'Johannesburg',2711 => 'Johannesburg',2712 => 'Pretoria',2713 => 'Mbombela',2714 => 'Rustenburg',2715 => 'Polokwane',2716 => 'Vereeniging',2717 => 'Ermelo',2718 => 'Klerksdorp',2721 => 'Cape\ Town',2722 => 'Malmesbury',2723 => 'Worcester',2724 => 'Cape\ Town',2727 => 'Vredendal',2728 => 'Hermanus',2731 => 'Durban',2732 => 'KwaDukuza',2733 => 'Pietermaritzburg',2734 => 'Newcastle',2735 => 'Richards\ Bay',2736 => 'Ladysmith',2739 => 'Port\ Shepstone',2740 => 'Bisho',2741 => 'Port\ Elizabeth',2742 => 'Jeffrey\'s\ Bay',2743 => 'East\ London',2744 => 'George',2745 => 'Queenstown',2746 => 'Grahamstown',2747 => 'Umtata',2748 => 'Cradock',2749 => 'Graaff\-Reinet',2751 => 'Bloemfontein',2753 => 'Kimberley',2754 => 'Upington',2756 => 'Kroonstad',2757 => 'Welkom',2758 => 'Bethlehem',);
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
