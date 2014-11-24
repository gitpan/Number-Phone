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
package Number::Phone::StubCountry::GR;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141124170812;

my $formatters = [{'pattern' => '([27]\\d)(\\d{4})(\\d{4})','leading_digits' => '21|7'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})','leading_digits' => '2[2-9]1|[689]'},{'pattern' => '(2\\d{3})(\\d{6})','leading_digits' => '2[2-9][02-9]'}];
my $validators = {'toll_free' => '800\\d{7}','mobile' => '69\\d{8}','voip' => '','fixed_line' => '2(?:1\\d{2}|2(?:2[1-46-9]|3[1-8]|4[1-7]|5[1-4]|6[1-8]|7[1-5]|[89][1-9])|3(?:1\\d|2[1-57]|[35][1-3]|4[13]|7[1-7]|8[124-6]|9[1-79])|4(?:1\\d|2[1-8]|3[1-4]|4[13-5]|6[1-578]|9[1-5])|5(?:1\\d|[29][1-4]|3[1-5]|4[124]|5[1-6])|6(?:1\\d|3[1245]|4[1-7]|5[13-9]|[269][1-6]|7[14]|8[1-5])|7(?:1\\d|2[1-5]|3[1-6]|4[1-7]|5[1-57]|6[135]|9[125-7])|8(?:1\\d|2[1-5]|[34][1-4]|9[1-57]))\\d{6}','special_rate' => '(8(?:0[16]|12|25)\\d{7})|(90[19]\\d{7})|()','personal_number' => '70\\d{8}','pager' => '','geographic' => '2(?:1\\d{2}|2(?:2[1-46-9]|3[1-8]|4[1-7]|5[1-4]|6[1-8]|7[1-5]|[89][1-9])|3(?:1\\d|2[1-57]|[35][1-3]|4[13]|7[1-7]|8[124-6]|9[1-79])|4(?:1\\d|2[1-8]|3[1-4]|4[13-5]|6[1-578]|9[1-5])|5(?:1\\d|[29][1-4]|3[1-5]|4[124]|5[1-6])|6(?:1\\d|3[1245]|4[1-7]|5[13-9]|[269][1-6]|7[14]|8[1-5])|7(?:1\\d|2[1-5]|3[1-6]|4[1-7]|5[1-57]|6[135]|9[125-7])|8(?:1\\d|2[1-5]|[34][1-4]|9[1-57]))\\d{6}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (3021 => "Athens\/Piraeus\/Salamina",302221 => "Chalcis",302222 => "Kymi",302223 => "Aliveri",302224 => "Karystos",302226 => "Aidipsos",302227 => "Kireas",302228 => "Messapia",302229 => "Eretria",302231 => "Lamia",302232 => "Domokos",302233 => "Atalanta",302234 => "Amfikleia",302235 => "Kamena\ Vourla",302236 => "Makrakomi",302237 => "Karpenisi",302238 => "Stylida",302241 => "Rhodes",302242 => "Kos",302243 => "Kalymnos",302244 => "Archangelos\,\ Rhodes",302245 => "Karpathos",302246 => "Salakos\,\ Rhodes",302247 => "Leros",302251 => "Mytilene",302252 => "Agiasos\/Plomari",302253 => "Kalloni\,\ Lesbos",302254 => "Agios\ Efstratios",302261 => "Livadeia",302262 => "Thebes",302263 => "Vilia",302264 => "Thisvi",302265 => "Amfissa",302266 => "Lidoriki",302267 => "Distomo",302268 => "Aliartos",302271 => "Chios",302272 => "Kardamyla",302273 => "Samos",302274 => "Psara\,\ Chios",302275 => "Agios\ Kirykos",302281 => "Ano\ Syros",302282 => "Andros",302283 => "Tinos",302284 => "Paros",302285 => "Naxos",302286 => "Santorini",302287 => "Milos",302288 => "Kea",302289 => "Mykonos",302291 => "Lagonisi",302292 => "Lavrio",302293 => "Agia\ Sotira",302294 => "Rafina",302295 => "Afidnes",302296 => "Megara",302297 => "Aegina",302298 => "Troezen\/Poros\/Hydra\/Spetses",302299 => "Markopoulo\ Mesogaias",30231 => "Thessaloniki",302321 => "Serres",302322 => "Nigrita",302323 => "Sidirokastro",302324 => "Nea\ Zichni",302325 => "Irakleia\,\ Serres",302327 => "Rodopoli",302331 => "Veria",302332 => "Naousa\,\ Imathia",302333 => "Alexandria",302341 => "Kilkis",302343 => "Polykastro",302351 => "Korinos",302352 => "Litochoro",302353 => "Aiginio",302371 => "Polygyros",302372 => "Arnaia",302373 => "Nea\ Moudania",302374 => "Kassandreia",302375 => "Nikiti",302376 => "Stratoni",302377 => "Ierissos\/Mount\ Athos",302381 => "Edessa",302382 => "Giannitsa",302384 => "Aridaia",302385 => "Florina",302386 => "Amyntaio",302391 => "Chalkidona",302392 => "Peraia\,\ Thessaloniki",302393 => "Lagkadikia",302394 => "Lagkadas",302395 => "Sochos",302396 => "Vasilika",302397 => "Asprovalta",302399 => "Kallikrateia",30241 => "Larissa",302421 => "Volos",302422 => "Almyros",302423 => "Kala\ Nera",302424 => "Skopelos",302425 => "Feres\,\ Magnesia",302426 => "Zagora",302427 => "Skiathos",302431 => "Trikala",302432 => "Kalabaka",302433 => "Farkadona",302434 => "Pyli",302441 => "Karditsa",302443 => "Sofades",302444 => "Palamas",302445 => "Mouzaki",302461 => "Kozani",302462 => "Grevena",302463 => "Ptolemaida",302464 => "Servia",302465 => "Siatista",302467 => "Kastoria",302468 => "Neapoli",302491 => "Farsala",302492 => "Tyrnavos",302493 => "Elassona",302494 => "Agia",302495 => "Gonnoi\/Makrychori",30251 => "Kavala",302521 => "Drama",302522 => "Prosotsani",302523 => "Kato\ Nevrokopi",302524 => "Paranesti",302531 => "Komotini",302532 => "Sapes",302533 => "Xylagani",302534 => "Iasmos",302535 => "Nea\ Kallisti",302541 => "Xanthi",302542 => "Stavroupoli",302544 => "Echinos",302551 => "Alexandroupoli",302552 => "Orestiada",302553 => "Didymoteicho",302554 => "Soufli",302555 => "Feres\,\ Evros",302556 => "Kyprinos",302591 => "Chrysoupoli",302592 => "Eleftheroupoli",302593 => "Thasos",302594 => "Nea\ Peramos\,\ Kavala",30261 => "Patras",302621 => "Burgas",302622 => "Amaliada",302623 => "Lechaina",302624 => "Olympia",302625 => "Krestena",302626 => "Andritsaina",302631 => "Messolonghi",302632 => "Aitoliko",302634 => "Nafpaktos",302635 => "Mataranga",302641 => "Agrinio",302642 => "Amfilochia",302643 => "Vonitsa",302644 => "Thermo",302645 => "Lefkada",302647 => "Fyteies",302651 => "Ioannina",302653 => "Asprangeli",302655 => "Konitsa",302656 => "Metsovo",302657 => "Delvinaki",302658 => "Zitsa",302659 => "Kalentzi",302661 => "Corfu",302662 => "Lefkimmi",302663 => "Corfu\ Island",302664 => "Filiates",302665 => "Igoumenitsa",302666 => "Paramythia",302671 => "Argostoli",302674 => "Sami\,\ Cephalonia",302681 => "Arta",302682 => "Preveza",302683 => "Filippiada",302684 => "Kanalaki",302685 => "Athamania",302691 => "Aigio",302692 => "Kalavryta",302693 => "Kato\ Achaia",302694 => "Chalandritsa",302695 => "Zakynthos",302696 => "Akrata",30271 => "Tripoli",302721 => "Kalamata",302722 => "Messene",302723 => "Pylos",302724 => "Meligalas",302725 => "Koroni",302731 => "Sparti",302732 => "Molaoi",302733 => "Gytheio",302734 => "Neapoli\,\ Voies",302735 => "Molaoi",302736 => "Kythera",302741 => "Corinth",302742 => "Kiato",302743 => "Xylokastro",302744 => "Loutraki",302746 => "Nemea",302747 => "Stymfalia",302751 => "Argos",302752 => "Nafplio",302753 => "Lygourio",302754 => "Kranidi",302755 => "Astros",302757 => "Leonidio",302761 => "Kyparissia",302763 => "Gargalianoi",302765 => "Kopanaki",302791 => "Megalopolis",302792 => "Kastri\ Kynourias",302795 => "Vytina",302796 => "Levidi",302797 => "Tropaia",30281 => "Heraklion",302821 => "Chania",302822 => "Kissamos",302823 => "Kandanos",302824 => "Kolymvari",302825 => "Vamos",302831 => "Rethymno",302832 => "Spyli",302833 => "Amari\,\ Rethymno",302834 => "Perama\ Mylopotamou",302841 => "Agios\ Nikolaos",302842 => "Ierapetra",302843 => "Sitia",302844 => "Tzermadio",302891 => "Arkalochori",302892 => "Moires\,\ Heraklion",302893 => "Pyrgos\,\ Crete",302894 => "Agia\ Varvara",302895 => "Ano\ Viannos",302897 => "Limenas\ Chersonisou",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"30$prefix"} if exists($map{"30$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+30|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
}

1;
