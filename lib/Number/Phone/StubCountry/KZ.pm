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
our $VERSION = 1.20141124170812;

my $formatters = [];
my $validators = {'toll_free' => '800\\d{7}','mobile' => '7(?:0[012578]|47|6[02-4]|7[15-8]|85)\\d{7}','voip' => '751\\d{7}','fixed_line' => '33622\\d{5}|7(?:1(?:0(?:[23]\\d|4[023]|59|63)|1(?:[23]\\d|4[0-79]|59)|2(?:[23]\\d|59)|3(?:2\\d|3[1-79]|4[0-35-9]|59)|4(?:2\\d|3[013-79]|4[0-8]|5[1-79])|5(?:2\\d|3[1-8]|4[1-7]|59)|6(?:[234]\\d|5[19]|61)|72\\d|8(?:[27]\\d|3[1-46-9]|4[0-5]))|2(?:1(?:[23]\\d|4[46-9]|5[3469])|2(?:2\\d|3[0679]|46|5[12679])|3(?:[234]\\d|5[139])|4(?:2\\d|3[1235-9]|59)|5(?:[23]\\d|4[01246-8]|59|61)|6(?:2\\d|3[1-9]|4[0-4]|59)|7(?:[237]\\d|40|5[279])|8(?:[23]\\d|4[0-3]|59)|9(?:2\\d|3[124578]|59)))\\d{5}','special_rate' => '()|(809\\d{7})|()','personal_number' => '','pager' => '','geographic' => '33622\\d{5}|7(?:1(?:0(?:[23]\\d|4[023]|59|63)|1(?:[23]\\d|4[0-79]|59)|2(?:[23]\\d|59)|3(?:2\\d|3[1-79]|4[0-35-9]|59)|4(?:2\\d|3[013-79]|4[0-8]|5[1-79])|5(?:2\\d|3[1-8]|4[1-7]|59)|6(?:[234]\\d|5[19]|61)|72\\d|8(?:[27]\\d|3[1-46-9]|4[0-5]))|2(?:1(?:[23]\\d|4[46-9]|5[3469])|2(?:2\\d|3[0679]|46|5[12679])|3(?:[234]\\d|5[139])|4(?:2\\d|3[1235-9]|59)|5(?:[23]\\d|4[01246-8]|59|61)|6(?:2\\d|3[1-9]|4[0-4]|59)|7(?:[237]\\d|40|5[279])|8(?:[23]\\d|4[0-3]|59)|9(?:2\\d|3[124578]|59)))\\d{5}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (7301 => "Republic\ of\ Buryatia",7302 => "Chita",7336 => "Baikonur",7341 => "Udmurtian\ Republic",7342 => "Perm",7343 => "Ekaterinburg",7345 => "Tyumen",7346 => "Surgut",7347 => "Republic\ of\ Bashkortostan",7349 => "Yamalo\-Nenets\ Autonomous\ District",7351 => "Chelyabinsk",7352 => "Kurgan",7353 => "Orenburg",7381 => "Omsk",7382 => "Tomsk",7383 => "Novosibirsk",7384 => "Kemerovo",7385 => "Altai\ Territory",7388 => "Republic\ of\ Altai",7390 => "Republic\ of\ Khakassia",7391 => "Krasnoyarsk\ Territory",7394 => "Republic\ of\ Tuva",7401 => "Kaliningrad",7411 => "Republic\ of\ Sakha",7413 => "Magadan",7415 => "Kamchatka\ Region",7416 => "Amur\ Region",7421 => "Khabarovsk\ Territory",7423 => "Primorie\ territory",7424 => "Sakhalin\ Region",7426 => "Jewish\ Autonomous\ Region",7427 => "Chukotka\ Autonomous\ District",7471 => "Kursk",7472 => "Belgorod",7473 => "Voronezh",7474 => "Lipetsk",7475 => "Tambov",7481 => "Smolensk",7482 => "Tver",7483 => "Bryansk",7484 => "Kaluga",7485 => "Yaroslavl",7486 => "Orel",7487 => "Tula",7491 => "Ryazan",7492 => "Vladimir",7494 => "Kostroma",7495 => "Moscow",7496 => "Moscow",7498 => "Moscow",7499 => "Moscow",77102 => "Zhezkazgan",771030 => "Atasu",771031 => "Aksu\-Ayuly",771032 => "Karazhal",771033 => "Agadyr",771034 => "Zhezdy",771035 => "Ulytau",771036 => "Balkhash",771037 => "Aktogai",771038 => "Shashubai",771039 => "Priozersk",771040 => "Zhairem\ \(GOK\)",771042 => "Zharyk",771043 => "Zhairem",771063 => "Satpaev",77112 => "Uralsk",771130 => "Peremetnoye",771131 => "Darinskoye",771132 => "Fyodorovka",771133 => "Aksai",771134 => "Zhympity",771135 => "Zhanibek",771136 => "Chapayev",771137 => "Chingirlau",771138 => "Zhalpaktal",771139 => "Taskala",771140 => "Saikhin",771141 => "Zhangala",771142 => "Taipak",771143 => "Akzhaik",771144 => "Kaztalovka",771145 => "Karatobe",77122 => "Atyrau",7712302 => "Tengizshevroil",7712303 => "Tengizs",771231 => "Akkystau",771233 => "Ganyushkino",771234 => "Indernborski",771235 => "Dossor",771236 => "Makhambet",771237 => "Kulsary",771238 => "Miyaly",771239 => "Makat",77132 => "Aktobe\/Kargalinskoye",771331 => "Martuk",771332 => "Uil",771333 => "Kandyagash",771334 => "Emba",771335 => "Shalkar",771336 => "Khromtau",771337 => "Alga",771339 => "Komsomolskoye",771341 => "Khobda",771342 => "Badamsha",771343 => "Irgiz",771345 => "Karauylkeldy",771346 => "Shubarkuduk",77142 => "Kostanai",771430 => "Arkalyk",771431 => "Rudny",771433 => "Lisakovsk",771434 => "Denisovka",771435 => "Zhitikara",771436 => "Taranovskoye",771437 => "Kamysty",771439 => "Torgai",771440 => "Amangeldy",771441 => "Karabalyk",771442 => "Fyodorovka",771443 => "Borovskoi",771444 => "Uzunkol",771445 => "Ubaganskoye",771448 => "Oktyabrskoye",771451 => "Sarykol",771452 => "Karasu",771453 => "Auliekol",771454 => "Karamendy",771455 => "Zatobolsk",771456 => "Kachar",77152 => "Petropavlovsk",771531 => "Bulayevo",771532 => "Smirnovo",771533 => "Saumalkol",771534 => "Sergeyevka",771535 => "Novoishimski",771536 => "Taiynsha",771537 => "Timiryazevo",771538 => "Beskol",771541 => "Mamlutka",771542 => "Kishkenekol",771543 => "Yavlenka",771544 => "Presnovka",771546 => "Talshik",77162 => "Kokshetau\/Krasni\ Yar",771630 => "Burabay",771631 => "Shortandy",771632 => "Zerenda",771633 => "Ereimentau",771635 => "Zhaksy",771636 => "Shuchinsk",771637 => "Korgalzhyn",771638 => "Akkol",771639 => "Stepnyak",771640 => "Balkashino",771641 => "Astrakhanka",771642 => "Egendykol",771643 => "Atbasar",771644 => "Arshaly",771645 => "Stepnogorsk",771646 => "Makinsk",771647 => "Esil",771648 => "Derzhavinsk",771651 => "Kabanbai\ Batyr",77172 => "Astana",77182 => "Pavlodar",771831 => "Zhelezinka",771832 => "Irtyshsk",771833 => "Terenkol",771834 => "Uspenka",771836 => "Sharbakty",771837 => "Aksu",771838 => "Koktobe",771839 => "Akku",771840 => "Bayanaul",771841 => "Aktogai",771845 => "Pavlodar\ area",77187 => "Ekibastuz",77212 => "Karaganda",77213 => "Aktau\/Temirtau",772131 => "Abai",772137 => "Saran",772138 => "Gabidena\ Mustafina",772144 => "Kiyevka",772146 => "Karkaralinsk",772147 => "Egindybulak",772148 => "Molodezhnoye",772149 => "Osakarovka",772153 => "Topar",772154 => "Botakara",772156 => "Shakhtinsk",77222 => "Semey",772230 => "Urdzhar",772236 => "Beskaragai",772237 => "Ayagoz",772239 => "Makanchi",772246 => "Barshatas",772251 => "Kurchatov",772252 => "Karaul",772256 => "Kainar",772257 => "Shulbinsk",77232 => "Ust\-Kamenogorsk",772331 => "Glubokoye",772332 => "Shemonaikha",772333 => "Samarskoye",772334 => "Tavricheskoye",772335 => "Zyryanovsk",772336 => "Ridder",772337 => "Serebryansk",772338 => "Bozanbai\/Molodezhnyi",772339 => "Kurchum",772340 => "Zaisan",772341 => "Ulken\ Naryn",772342 => "Katon\-Karagai",772343 => "Terekty",772344 => "Akzhar",772345 => "Shar",772346 => "Aksuat",772347 => "Kalbatau",772348 => "Kokpekty",772351 => "Borodulikha",772353 => "Novaya\ Shulba",77242 => "Kyzylorda",772431 => "Zhalagash",772432 => "Shiyeli",772433 => "Aralsk",772435 => "Zhanakorgan",772436 => "Terenozek",772437 => "Zhosaly",772438 => "Aiteke\ bi",77252 => "Shymkent",772530 => "Temirlanovka",772531 => "Aksukent",772532 => "Abai",772533 => "Turkestan",772534 => "Zhetysai",772535 => "Shardara",772536 => "Kentau",772537 => "Saryagash",772538 => "Turara\ Ryskulova",772539 => "Kazygurt",772540 => "Arys",772541 => "Myrzakent",772542 => "Asykata",772544 => "Shaulder",772546 => "Sholakkorgan",772547 => "Lenger",772548 => "Shayan",77262 => "Taraz",772631 => "Kulan",772632 => "Merke",772633 => "Asa",772634 => "Zhanatas",772635 => "Bauyrzhan\ Mamyshuly",772636 => "Kordai",772637 => "Sarykemer",772638 => "Tole\ bi",772639 => "Saudakent",772641 => "Akkol",772642 => "Moiynkum",772643 => "Shu",772644 => "Karatau",77272 => "Almaty",772725 => "Otegen\ Batyra",77272956 => "Talgar",77272983 => "Kaskelen",77273 => "Almaty",772752 => "Otegen\ Batyra",772757 => "Akshi",772770 => "Uzynagash",772771 => "Kaskelen",772772 => "Kapchagai",772773 => "Bakanas",772774 => "Talgar",772775 => "Esik",772776 => "Shelek",772777 => "Kegen",772778 => "Chundzha",772779 => "Narynkol",77282 => "Taldykorgan",772831 => "Zharkent",772832 => "Zhansugurov",772833 => "Usharal",772834 => "Ushtobe",772835 => "Tekeli",772836 => "Karabulak",772837 => "Kabanbai",772838 => "Balpyk\ bi",772839 => "Sarkand",772840 => "Saryozek",772841 => "Kapal",772842 => "Kogaly",772843 => "Lepsy",77292 => "Aktau",772931 => "Shetpe",772932 => "Beineu",772934 => "Zhanaozen",772935 => "Zhetybai",772937 => "Kuryk",772938 => "Fort\ Shevchenko",7811 => "Pskov",7812 => "St\ Petersburg",7813 => "Leningrad\ region",7814 => "Republic\ of\ Karelia",7815 => "Murmansk",7816 => "Veliky\ Novgorod",7817 => "Vologda",7818 => "Arkhangelsk",7820 => "Cherepovets",7821 => "Komi\ Republic",7831 => "Nizhni\ Novgorod",7833 => "Kirov",7834 => "Republic\ of\ Mordovia",7835 => "Chuvashi\ Republic",7836 => "Republic\ of\ Marij\ El",7841 => "Penza",7842 => "Ulyanovsk",7843 => "Republic\ of\ Tatarstan",7844 => "Volgograd",7845 => "Saratov",7846 => "Samara",7847 => "Republic\ of\ Kalmykia",7848 => "Tolyatti",7851 => "Astrakhan",7855 => "Naberezhnye\ Chelny",7861 => "Krasnodar\ Territory",7862 => "Sochi",7863 => "Rostov",7865 => "Stavropol\ territory",7866 => "Kabardino\-Balkarian\ Republic",7867 => "Republic\ of\ North\ Ossetia",7871 => "Chechen\ Republic",7872 => "Republic\ of\ Daghestan",7873 => "Ingushi\ Republic",7877 => "Republic\ of\ Adygeya",7878 => "Karachayevo\-Cherkessian\ Republic",7879 => "Mineranye\ Vody",);
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
  return $self if ($self->is_valid());
  $number =~ s/(^8)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
