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
our $VERSION = 1.20130704221644;

my $formatters = [{'pattern' => '(1)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '1'},{'pattern' => '(0\\d)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '0'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '0[2-7]\\d{6}','voip' => '','fixed_line' => '1\\d{6}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (241140 => "Kango",2411420 => "Ntoum",2411424 => "Cocobeach",241144 => "Libreville",241145 => "Libreville",241146 => "Libreville",241147 => "Libreville",241148 => "Libreville",241150 => "Gamba",241154 => "Ombou\Ã\©",241155 => "Port\-Gentil",241156 => "Port\-Gentil",241158 => "Lambar\Ã\©n\Ã\©",241159 => "Ndjol\Ã\©",241160 => "Ngouoni",241162 => "Mounana",241164 => "Lastourville",241165 => "Koulamoutou",241166 => "Moanda",241167 => "Franceville",241169 => "L\Ã\©coni\/Aki\Ã\©ni\/Okondja",24117 => "Libreville",241182 => "Tchibanga",241183 => "Mayumba",241186 => "Mouila",241190 => "Makokou",241192 => "M\Ã\©kambo",241193 => "Boou\Ã\©",241196 => "Bitam",241198 => "Oyem",);
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
