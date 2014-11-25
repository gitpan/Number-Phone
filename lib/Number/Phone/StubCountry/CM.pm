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
package Number::Phone::StubCountry::CM;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141125232348;

my $formatters = [{'pattern' => '([26])(\\d{2})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[26]'},{'pattern' => '([2357-9]\\d)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[23579]|88'},{'leading_digits' => '80','pattern' => '(800)(\\d{2})(\\d{3})'}];
my $validators = {'mobile' => '6[5-79]\\d{7}|[579]\\d{7}','personal_number' => '','special_rate' => '()|(88\\d{6})|()','fixed_line' => '2(?:22|33|4[23])\\d{6}|(?:22|33)\\d{6}','voip' => '','geographic' => '2(?:22|33|4[23])\\d{6}|(?:22|33)\\d{6}','pager' => '','toll_free' => '800\\d{5}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (237222111 => "Mbalmayo",237222120 => "Akonolinga",237222121 => "Ayos",237222136 => "Es\Ã\©ka\/Mboumnyebel",237222144 => "Ngoumou",237222180 => "Obala",237222182 => "Monat\Ã\©l\Ã\©",237222185 => "Bafia",237222195 => "Nanga\ Eboko",23722220 => "Jamot",23722221 => "Jamot",23722222 => "Yaounde",23722223 => "Yaounde",237222241 => "Bertoua",237222242 => "Bertoua",237222250 => "N\'Gaound\Ã\©r\Ã\©",237222251 => "N\'Gaound\Ã\©r\Ã\©",237222252 => "N\'Gaound\Ã\©r\Ã\©",237222253 => "N\'Gaound\Ã\©r\Ã\©",237222254 => "Dang",237222256 => "Beelel\/Mb\Ã\©",237222262 => "Batouri",237222264 => "Belabo",23722227 => "Garoua",237222282 => "Mengong",237222283 => "Ebolowa",237222284 => "Ebolowa",23722229 => "Maroua",23722230 => "Nkomo",23722231 => "Biyem\ Assi",237222321 => "Mfou",237222322 => "Soa",237222335 => "Abong\-Bang",237222347 => "N\'Gaoundal",237222348 => "Tibati",237222354 => "Galim\ Tign\Ã\¨re",237222355 => "Tign\Ã\¨re",237222369 => "Banyo",237222371 => "Meiganga",237222395 => "Guider",237222397 => "Figuil",237222414 => "Kousseri",237222426 => "Yagoua",237222447 => "Mora",237222455 => "Mokolo",237222461 => "Kribi",237222462 => "Kribi",237222463 => "Lolodorf",237222464 => "Lolodorf",237222478 => "Sangmelima",237222479 => "Meyomessala\/Efoulan",237222482 => "Kye\-Ossie\/Ambam",237233205 => "Wum",237233215 => "Nkambe",237233221 => "Kumbo",237233262 => "Foumban",237233263 => "Foumban",237233267 => "Foumbot",237233277 => "Bandjoun",237233296 => "Bafang",237233297 => "Bafang",237233305 => "Mbouda",237233313 => "Yabassi",237233321 => "Muyuka",237233322 => "Bu\Ã\©a",237233323 => "Bu\Ã\©a",237233324 => "Bu\Ã\©a",237233325 => "Bu\Ã\©a",237233326 => "Bu\Ã\©a",237233327 => "Bu\Ã\©a",237233328 => "Bu\Ã\©a",237233329 => "Bu\Ã\©a",237233331 => "Tiko",237233332 => "Limb\Ã\©",237233333 => "Limb\Ã\©",237233334 => "Limb\Ã\©",237233335 => "Limb\Ã\©",237233336 => "Limb\Ã\©",237233337 => "Limb\Ã\©",237233338 => "Limb\Ã\©",237233339 => "Limb\Ã\©",237233341 => "Manf\Ã\©",237233354 => "Kumba",237233355 => "Kumba",237233360 => "Bamenda",237233361 => "Bamenda",237233362 => "Bamenda",237233363 => "Bamenda",237233364 => "Bamenda",237233366 => "Mbambili",23723337 => "Bassa",23723339 => "Bonab\Ã\©ri",23723340 => "Bepanda",23723341 => "Bepanda",23723342 => "Akwa\ Centre",23723343 => "Akwa\ Centre",23723344 => "Bafoussam",237233451 => "Dschang",237233452 => "Dschang",237233464 => "Ed\Ã\©a",23723347 => "Akwa\ North",237233484 => "Bangangt\Ã\©",237233489 => "Bangangt\Ã\©",237233490 => "Nkongsamba",237233491 => "Nkongsamba",237233492 => "Nkongsamba",237233493 => "Nkongsamba",237233494 => "Nkongsamba",237233495 => "Nkongsamba",237233496 => "Nkongsamba",237233497 => "Loum\/Mbanga",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"237$prefix"} if exists($map{"237$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+237|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
