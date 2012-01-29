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
package Number::Phone::StubCountry::KZ;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '800\\d{7}','pager' => '','mobile' => '7(?:0[01257]|6[02-4]|7[1578])\\d{7}','voip' => '751\\d{7}','fixed_line' => '7(?:1(?:0(?:[23]\\d|4[023]|59|63)|1(?:[23]\\d|4[0-79]|59)|2(?:[23]\\d|59)|3(?:2\\d|3[1-79]|4[0-35-9]|59)|4(?:2\\d|3[013-79]|4[0-8]|5[1-79])|5(?:2\\d|3[1-8]|4[1-7]|59)|6(?:[234]\\d|5[19]|61)|72\\d|8(?:[27]\\d|3[1-46-9]|4[0-5]))|2(?:1(?:[23]\\d|4[46-9]|5[3469])|2(?:2\\d|3[0679]|46|5[12679])|3(?:[234]\\d|5[139])|4(?:2\\d|3[1235-9]|59)|5(?:[23]\\d|4[01246-8]|59|61)|6(?:2\\d|3[1-9]|4[0-4]|59)|7(?:[23]\\d|40|5[279]|7\\d)|8(?:[23]\\d|4[0-3]|59)|9(?:2\\d|3[124578]|59))|3622)\\d{5}','special_rate' => '()|(809\\d{7})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (7301 => 'Republic\ of\ Buryatia',7302 => 'Chita',7336 => 'Baikonur',7341 => 'Udmurtian\ Republic',7342 => 'Perm',7343 => 'Ekaterinburg',7345 => 'Tyumen',7346 => 'Surgut',7347 => 'Republic\ of\ Bashkortostan',7349 => 'Yamalo\-Nenets\ Autonomous\ District',7351 => 'Chelyabinsk',7352 => 'Kurgan',7353 => 'Orenburg',7381 => 'Omsk',7382 => 'Tomsk',7383 => 'Novosibirsk',7384 => 'Kemerovo',7385 => 'Altai\ Territory',7388 => 'Republic\ of\ Altai',7390 => 'Republic\ of\ Khakassia',7391 => 'Krasnoyarsk\ Territory',7394 => 'Republic\ of\ Tuva',7401 => 'Kaliningrad',7411 => 'Republic\ of\ Sakha',7413 => 'Magadan',7415 => 'Kamchatka\ Region',7416 => 'Amur\ Region',7421 => 'Khabarovsk\ Territory',7423 => 'Primorie\ territory',7424 => 'Sakhalin\ Region',7426 => 'Jewish\ Autonomous\ Region',7427 => 'Chukotka\ Autonomous\ District',7471 => 'Kursk',7472 => 'Belgorod',7473 => 'Voronezh',7474 => 'Lipetsk',7475 => 'Tambov',7481 => 'Smolensk',7482 => 'Tver',7483 => 'Bryansk',7484 => 'Kaluga',7485 => 'Yaroslavl',7486 => 'Orel',7487 => 'Tula',7491 => 'Ryazan',7492 => 'Vladimir',7494 => 'Kostroma',7495 => 'Moscow',7496 => 'Moscow',7498 => 'Moscow',7499 => 'Moscow',7811 => 'Pskov',7812 => 'St\ Petersburg',7813 => 'Leningrad\ region',7814 => 'Republic\ of\ Karelia',7815 => 'Murmansk',7816 => 'Veliky\ Novgorod',7817 => 'Vologda',7818 => 'Arkhangelsk',7820 => 'Cherepovets',7821 => 'Komi\ Republic',7831 => 'Nizhni\ Novgorod',7833 => 'Kirov',7834 => 'Republic\ of\ Mordovia',7835 => 'Chuvashi\ Republic',7836 => 'Republic\ of\ Marij\ El',7841 => 'Penza',7842 => 'Ulyanovsk',7843 => 'Republic\ of\ Tatarstan',7844 => 'Volgograd',7845 => 'Saratov',7846 => 'Samara',7847 => 'Republic\ of\ Kalmykia',7848 => 'Tolyatti',7851 => 'Astrakhan',7855 => 'Naberezhnye\ Chelny',7861 => 'Krasnodar\ Territory',7862 => 'Sochi',7863 => 'Rostov',7865 => 'Stavropol\ territory',7866 => 'Kabardino\-Balkarian\ Republic',7867 => 'Republic\ of\ North\ Ossetia',7871 => 'Chechen\ Republic',7872 => 'Republic\ of\ Daghestan',7873 => 'Ingushi\ Republic',7877 => 'Republic\ of\ Adygeya',7878 => 'Karachayevo\-Cherkessian\ Republic',7879 => 'Mineranye\ Vody',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"7$prefix"} if exists($map{"7$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+7|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
