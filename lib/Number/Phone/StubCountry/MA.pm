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
package Number::Phone::StubCountry::MA;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030162647;

my $formatters = [{'pattern' => '([56]\\d{2})(\\d{6})','leading_digits' => '5(?:2[015-7]|3[0-4])|6'},{'pattern' => '([58]\\d{3})(\\d{5})','leading_digits' => '5(?:2(?:[2-48]|90)|3(?:[5-79]|80))|892'},{'pattern' => '(5\\d{4})(\\d{4})','leading_digits' => '5(?:29|38)[89]'},{'pattern' => '(8[09])(\\d{7})','leading_digits' => '8(?:0|9[013-9])'}];
my $validators = {'personal_number' => '','toll_free' => '80\\d{7}','pager' => '','mobile' => '6(?:0[0-6]|[14-7]\\d|2[236-9]|3[03458]|8[01]|99)\\d{6}','voip' => '','fixed_line' => '5(?:2(?:(?:[015-7]\\d|2[2-9]|3[2-57]|4[2-8]|8[235-9])\\d|9(?:0\\d|[89]0))|3(?:(?:[0-4]\\d|[57][2-9]|6[235-8]|9[3-9])\\d|8(?:0\\d|[89]0)))\\d{4}','special_rate' => '()|(89\\d{7})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (212520 => 'Casablanca',212521 => 'Casablanca\/Central\ Morocco',2125222 => 'Casablanca',2125223 => 'Casablanca',2125224 => 'Casablanca',2125225 => 'Casablanca',2125226 => 'Casablanca',2125227 => 'Casablanca',2125228 => 'Casablanca',2125229 => 'Casablanca',2125232 => 'Mohammedia',2125233 => 'El\ Jedida\/Mohammedia',2125234 => 'Settai',2125235 => 'Oued\ Zem',2125237 => 'Settat',2125242 => 'El\ Kelaa\ des\ Sraghna',2125243 => 'Marrakech',2125244 => 'Marrakech',2125246 => 'El\ Youssoufia\/Safi',2125247 => 'Essaouira',2125248 => 'Ouarzazate',212525 => 'Southern\ Morocco',2125282 => 'Agadir\/Ait\ Meloul\/Inezgane',2125283 => 'Inezgane\/Taroudant',2125285 => 'Oulad\ Teima\/Taroudant',2125286 => 'Tiznit',2125287 => 'Guelmim\/Tan\ Tan',2125288 => 'Agadir\/Es\-Semara\/Tarfaya',2125289 => 'Dakhla\/Laayoune',2125290 => 'Casablanca',21252980 => 'Marrakech\ area',21252990 => 'Agadir\ area',212530 => 'Rabat\/K\Ã\¨nitra',212531 => 'Tangier\/Al\ Hoceima\/Larache\/T\Ã\¨touan',212532 => 'F\Ã\¨s\/Errachidia\/Mekn\Ã\¨s\/Nador\/Oujda\/Taza',2125352 => 'Taza',2125353 => 'Midelt',2125354 => 'Mekn\Ã\¨s',2125355 => 'Mekn\Ã\¨s',2125356 => 'F\Ã\¨s',2125357 => 'Goulmima',2125358 => 'Ifrane',2125359 => 'F\Ã\¨s',2125362 => 'Berkane',2125363 => 'Nador',2125365 => 'Oujda',2125366 => 'Figuig\/Oujda',2125367 => 'Bouarfa\/Oujda',2125368 => 'Figuig',2125372 => 'Rabat',2125373 => 'K\Ã\©nitra',2125374 => 'Ouazzane',2125375 => 'Kh\Ã\©misset',2125376 => 'Rabat\/T\Ã\©mara',2125377 => 'Rabat',2125378 => 'Sal\Ã\©',2125379 => 'Souk\ Larbaa',2125380 => 'Rabat\ area',21253880 => 'Tangier\ area',21253890 => 'F\Ã\¨s\/Mekn\Ã\¨s\ areas',2125393 => 'Tangier',2125394 => 'Asilah',2125395 => 'Larache',2125396 => 'Fnideq\/Martil\/Mdiq',2125397 => 'T\Ã\©touan',2125398 => 'Al\ Hoceima\/Chefchaouen',2125399 => 'Al\ Hoceima\/Larache\/Tangier',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"212$prefix"} if exists($map{"212$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+212|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
