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
package Number::Phone::StubCountry::ST;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})'}];
my $validators = {'geographic' => '22\\d{5}','personal_number' => '','toll_free' => '','special_rate' => '()|()|()','mobile' => '9[89]\\d{5}','voip' => '','pager' => '','fixed_line' => '22\\d{5}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2392220 => "Santo\ Amaro",2392221 => "\Ã\gua\ Grande",2392222 => "\Ã\gua\ Grande",2392223 => "\Ã\gua\ Grande",2392224 => "\Ã\gua\ Grande",2392225 => "\Ã\gua\ Grande",2392226 => "\Ã\gua\ Grande",2392227 => "\Ã\gua\ Grande",2392228 => "\Ã\gua\ Grande",2392231 => "Guadalupe",2392233 => "Neves\,\ Santa\ Catarina",239224 => "\Ã\gua\ Grande",2392251 => "Autonomous\ Region\ of\ Pr\Ã\­ncipe",2392261 => "Angolares\,\ Porto\ Alegre",2392265 => "Santana\,\ Ribeira\ Afonso",2392271 => "Trindade",2392272 => "Madalena",239228 => "\Ã\gua\ Grande",239229 => "\Ã\gua\ Grande",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"239$prefix"} if exists($map{"239$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+239|\D)//g;
  $number =~ s/(^)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
