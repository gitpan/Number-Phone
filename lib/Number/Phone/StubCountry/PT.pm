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
package Number::Phone::StubCountry::PT;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140425182230;

my $formatters = [{'leading_digits' => '2[12]','pattern' => '(2\\d)(\\d{3})(\\d{4})'},{'leading_digits' => '2[3-9]|[346-9]','pattern' => '([2-46-9]\\d{2})(\\d{3})(\\d{3})'}];
my $validators = {'toll_free' => '80[02]\\d{6}','geographic' => '2(?:[12]\\d|[35][1-689]|4[1-59]|6[1-35689]|7[1-9]|8[1-69]|9[1256])\\d{6}','mobile' => '9(?:[136]\\d{2}|2[0-79]\\d|480)\\d{5}','personal_number' => '884[128]\\d{5}','pager' => '','voip' => '30\\d{7}','fixed_line' => '2(?:[12]\\d|[35][1-689]|4[1-59]|6[1-35689]|7[1-9]|8[1-69]|9[1256])\\d{6}','special_rate' => '(80(?:8\\d|9[1579])\\d{5})|(76(?:0[1-57]|1[2-47]|2[237])\\d{5})|(70(?:7\\d|8[17])\\d{5})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (35121 => "Lisbon",35122 => "Porto",351231 => "Mealhada",351232 => "Viseu",351233 => "Figueira\ da\ Foz",351234 => "Aveiro",351235 => "Arganil",351236 => "Pombal",351238 => "Seia",351239 => "Coimbra",351241 => "Abrantes",351242 => "Ponte\ de\ S\Ã\´r",351243 => "Santar\Ã\©m",351244 => "Leiria",351245 => "Portalegre",351249 => "Torres\ Novas",351251 => "Valen\Ã\§a",351252 => "V\.\ N\.\ de\ Famalic\Ã\£o",351253 => "Braga",351254 => "Peso\ da\ R\Ã\©gua",351255 => "Penafiel",351256 => "S\.\ Jo\Ã\£o\ da\ Madeira",351258 => "Viana\ do\ Castelo",351259 => "Vila\ Real",351261 => "Torres\ Vedras",351262 => "Caldas\ da\ Rainha",351263 => "Vila\ Franca\ de\ Xira",351265 => "Set\Ã\ºbal",351266 => "\Ã\‰vora",351268 => "Estremoz",351269 => "Santiago\ do\ Cac\Ã\©m",351271 => "Guarda",351272 => "Castelo\ Branco",351273 => "Bragan\Ã\§a",351274 => "Proen\Ã\§a\-a\-Nova",351275 => "Covilh\Ã\£",351276 => "Chaves",351277 => "Idanha\-a\-Nova",351278 => "Mirandela",351279 => "Moncorvo",351281 => "Tavira",351282 => "Portim\Ã\£o",351283 => "Odemira",351284 => "Beja",351285 => "Moura",351286 => "Castro\ Verde",351289 => "Faro",351291 => "Funchal",351292 => "Horta",351295 => "Angra\ do\ Hero\Ã\­smo",351296 => "Ponta\ Delgada",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"351$prefix"} if exists($map{"351$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+351|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
