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
package Number::Phone::StubCountry::GA;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140822223715;

my $formatters = [{'pattern' => '(\\d)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[2-7]'},{'leading_digits' => '0','pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})'}];
my $validators = {'special_rate' => '()|()|()','pager' => '','voip' => '','personal_number' => '','geographic' => '01\\d{6}','fixed_line' => '01\\d{6}','mobile' => '0?[2-7]\\d{6}','toll_free' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2410140 => "Kango",24101420 => "Ntoum",24101424 => "Cocobeach",2410144 => "Libreville",2410145 => "Libreville",2410146 => "Libreville",2410147 => "Libreville",2410148 => "Libreville",2410150 => "Gamba",2410154 => "Ombou\Ã\©",2410155 => "Port\-Gentil",2410156 => "Port\-Gentil",2410158 => "Lambar\Ã\©n\Ã\©",2410159 => "Ndjol\Ã\©",2410160 => "Ngouoni",2410162 => "Mounana",2410164 => "Lastoursville",2410165 => "Koulamoutou",2410166 => "Moanda",2410167 => "Franceville",2410169 => "L\Ã\©coni\/Aki\Ã\©ni\/Okondja",241017 => "Libreville",2410182 => "Tchibanga",2410183 => "Mayumba",2410186 => "Mouila",2410190 => "Makokou",2410192 => "M\Ã\©kambo",2410193 => "Boou\Ã\©",2410196 => "Bitam",2410198 => "Oyem",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"241$prefix"} if exists($map{"241$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+241|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
