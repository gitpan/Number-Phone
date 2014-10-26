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
package Number::Phone::StubCountry::CV;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140425182229;

my $formatters = [{'pattern' => '(\\d{3})(\\d{2})(\\d{2})'}];
my $validators = {'personal_number' => '','fixed_line' => '2(?:2[1-7]|3[0-8]|4[12]|5[1256]|6\\d|7[1-3]|8[1-5])\\d{4}','special_rate' => '()|()|()','pager' => '','voip' => '','geographic' => '2(?:2[1-7]|3[0-8]|4[12]|5[1256]|6\\d|7[1-3]|8[1-5])\\d{4}','mobile' => '(?:9\\d|59)\\d{5}','toll_free' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (238221 => "Ribeira\ Grande\,\ Santo\ Ant\�\�o",238222 => "Porto\ Novo\,\ Santo\ Ant\�\�o",238223 => "Pa\�\�l\,\ Santo\ Ant\�\�o",238224 => "Cocoli\,\ Santo\ Ant\�\�o",238225 => "Ponta\ do\ Sol\,\ Santo\ Ant\�\�o",238226 => "Ch\�\�\ da\ Igreja\,\ Santo\ Ant\�\�o",238227 => "Ribeira\ das\ Patas\,\ Santo\ Ant\�\�o",238230 => "Mindelo\,\ S\�\�o\ Vicente",238231 => "Mindelo\,\ S\�\�o\ Vicente",238232 => "Mindelo\,\ S\�\�o\ Vicente",238235 => "Ribeira\ Brava\,\ S\�\�o\ Nicolau",238236 => "Tarrafal\ de\ S\�\�o\ Nicolau\,\ S\�\�o\ Nicolau",238237 => "Faj\�\�\,\ S\�\�o\ Nicolau",238238 => "Praia\ Branca\,\ S\�\�o\ Nicolau",238241 => "Espargos\,\ Sal",238242 => "Santa\ Maria\,\ Sal",238251 => "Sal\ Rei\,\ Boa\ Vista",238252 => "Funda\ das\ Figueiras\,\ Boa\ Vista",238255 => "Vila\ do\ Maio\,\ Maio",238256 => "Calheta\,\ Maio",238260 => "Praia\,\ Santiago",238261 => "Praia\,\ Santiago",238262 => "Praia\,\ Santiago",238263 => "Praia\,\ Santiago",238264 => "Praia\,\ Santiago",238265 => "Santa\ Catarina\,\ Santiago",238266 => "Tarrafal\,\ Santiago",238267 => "Cidade\ Velha\,\ Santiago",238268 => "S\�\�o\ Domingos\,\ Santiago",238269 => "Pedra\ Badejo\,\ Santiago",238271 => "S\�\�o\ Louren\�\�o\ dos\ \�\�rg\�\�os\/S\�\�o\ Jorge\,\ Santiago",238272 => "Picos\,\ Santiago",238273 => "Calheta\ de\ S\�\�o\ Miguel\,\ Santiago",238281 => "S\�\�o\ Filipe\,\ Fogo",238282 => "Cova\ Figueira\,\ Fogo",238283 => "Mosteiros\,\ Fogo",238284 => "S\�\�o\ Jorge\,\ Fogo",238285 => "Nova\ Sintra\,\ Brava",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"238$prefix"} if exists($map{"238$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+238|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
