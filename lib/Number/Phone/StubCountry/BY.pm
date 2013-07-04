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
package Number::Phone::StubCountry::BY;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20130704221644;

my $formatters = [{'pattern' => '([1-4]\\d)(\\d{3})(\\d{4})','leading_digits' => '[1-4]'},{'pattern' => '([89]\\d{2})(\\d{3})(\\d{4})','leading_digits' => '8[01]|9'},{'pattern' => '(8\\d{2})(\\d{4})(\\d{4})','leading_digits' => '82'}];
my $validators = {'personal_number' => '','toll_free' => '8(?:0[13]|20\\d)\\d{7}','pager' => '','mobile' => '(?:2(?:5[5679]|9[1-9])|33\\d|44\\d)\\d{6}','voip' => '','fixed_line' => '(?:1(?:5(?:1[1-5]|2\\d|6[2-4]|9[1-7])|6(?:[235]\\d|4[1-7])|7\\d{2})|2(?:1(?:[246]\\d|3[0-35-9]|5[1-9])|2(?:[235]\\d|4[0-8])|3(?:2\\d|3[02-79]|4[024-7]|5[0-7])))\\d{5}','special_rate' => '()|((?:810|902)\\d{7})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (3751511 => "Vyalikaya\ Byerastavitsa\,\ Grodno\ Region",3751512 => "Volkovysk",3751513 => "Svisloch\,\ Grodno\ Region",3751514 => "Shchuchin\,\ Grodno\ Region",3751515 => "Mosty\,\ Grodno\ Region",375152 => "Grodno",375154 => "Lida",3751562 => "Slonim",3751563 => "Dyatlovo\,\ Grodno\ Region",3751564 => "Zelva\,\ Grodno\ Region",3751591 => "Ostrovets\,\ Grodno\ Region",3751592 => "Smorgon",3751593 => "Oshmyany",3751594 => "Voronovo\,\ Grodno\ Region",3751595 => "Ivye\,\ Grodno\ Region",3751596 => "Korelichi\,\ Grodno\ Region",3751597 => "Novogrudok",375162 => "Brest",375163 => "Baranovichi",3751631 => "Kamenets\,\ Brest\ Region",3751632 => "Pruzhany\,\ Brest\ Region",3751633 => "Lyakhovichi\,\ Brest\ Region",3751641 => "Zhabinka\,\ Brest\ Region",3751642 => "Kobryn",3751643 => "Bereza\,\ Brest\ Region",3751644 => "Drogichin\,\ Brest\ Region",3751645 => "Ivatsevichi\,\ Brest\ Region",3751646 => "Gantsevichi\,\ Brest\ Region",3751647 => "Luninets\,\ Brest\ Region",375165 => "Pinsk",3751651 => "Malorita\,\ Brest\ Region",3751652 => "Ivanovo\,\ Brest\ Region",3751655 => "Stolin\,\ Brest\ Region",37517 => "Minsk",3751713 => "Maryina\ Gorka\,\ Minsk\ Region",3751714 => "Cherven",3751715 => "Berezino\,\ Minsk\ Region",3751716 => "Dzerzhinsk",3751717 => "Stolbtsy",3751718 => "Uzda\,\ Minsk\ Region",3751719 => "Kopyl\,\ Minsk\ Region",375174 => "Soligorsk",375176 => "Molodechno",375177 => "Borisov",3751770 => "Nesvizh",3751771 => "Vileyka",3751772 => "Volozhin",3751774 => "Lahoysk",3751775 => "Zhodino",3751776 => "Smalyavichy",3751792 => "Starye\ Dorogi\,\ Minsk\ Region",3751793 => "Kletsk\,\ Minsk\ Region",3751794 => "Lyuban\,\ Minsk\ Region",3751795 => "Slutsk",3751796 => "Krupki\,\ Minsk\ Region",3751797 => "Myadel",375212 => "Vitebsk",3752130 => "Shumilino\,\ Vitebsk\ Region",3752131 => "Beshenkovichi\,\ Vitebsk\ Region",3752132 => "Lepel",3752133 => "Chashniki\,\ Vitebsk\ Region",3752135 => "Senno\,\ Vitebsk\ Region",3752136 => "Tolochin",3752137 => "Dubrovno\,\ Vitebsk\ Region",3752138 => "Liozno\,\ Vitebsk\ Region",3752139 => "Gorodok\,\ Vitebsk\ Region",375214 => "Polotsk\/Navapolatsk",3752151 => "Verhnedvinsk\,\ Vitebsk\ Region",3752152 => "Miory\,\ Vitebsk\ Region",3752153 => "Braslav",3752154 => "Sharkovshchina\,\ Vitebsk\ Region",3752155 => "Postavy",3752156 => "Glubokoye",3752157 => "Dokshitsy\,\ Vitebsk\ Region",3752158 => "Ushachi\,\ Vitebsk\ Region",3752159 => "Rossony\,\ Vitebsk\ Region",375216 => "Orsha",375222 => "Mogilev",3752230 => "Glusk\,\ Mogilev\ Region",3752231 => "Byhov\,\ Mogilev\ Region",3752232 => "Belynichi\,\ Mogilev\ Region",3752233 => "Gorki\,\ Mogilev\ Region",3752234 => "Krugloye\,\ Mogilev\ Region",3752235 => "Osipovichi",3752236 => "Klichev\,\ Mogilev\ Region",3752237 => "Kirovsk\,\ Mogilev\ Region",3752238 => "Krasnopolye\,\ Mogilev\ Region",3752239 => "Shklov",3752240 => "Mstislavl",3752241 => "Krichev\,\ Mogilev\ Region",3752242 => "Chausy\,\ Mogilev\ Region",3752243 => "Cherikov\,\ Mogilev\ Region",3752244 => "Klimovichi\,\ Mogilev\ Region",3752245 => "Kostyukovichi\,\ Mogilev\ Region",3752246 => "Slavgorod\,\ Mogilev\ Region",3752247 => "Khotimsk\,\ Mogilev\ Region",3752248 => "Dribin\,\ Mogilev\ Region",375225 => "Babruysk",375232 => "Gomel",3752330 => "Vetka\,\ Gomel\ Region",3752332 => "Chechersk\,\ Gomel\ Region",3752333 => "Dobrush\,\ Gomel\ Region",3752334 => "Zhlobin",3752336 => "Budo\-Koshelevo\,\ Gomel\ Region",3752337 => "Korma\,\ Gomel\ Region",3752339 => "Rogachev",3752340 => "Rechitsa",3752342 => "Svetlogorsk",3752344 => "Bragin\,\ Gomel\ Region",3752345 => "Kalinkovichi",3752346 => "Khoiniki\,\ Gomel\ Region",3752347 => "Loyev\,\ Gomel\ Region",3752350 => "Petrikov\,\ Gomel\ Region",3752351 => "Mozyr",3752353 => "Zhitkovichi\,\ Gomel\ Region",3752354 => "Yelsk\,\ Gomel\ Region",3752355 => "Narovlya\,\ Gomel\ Region",3752356 => "Lelchitsy\,\ Gomel\ Region",3752357 => "Oktyabrskiy\,\ Gomel\ Region",375236 => "Mozyr",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"375$prefix"} if exists($map{"375$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+375|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
