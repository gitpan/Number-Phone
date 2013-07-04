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
package Number::Phone::StubCountry::SE;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20130704221644;

my $formatters = [{'pattern' => '(8)(\\d{2,3})(\\d{2,3})(\\d{2})','leading_digits' => '8'},{'pattern' => '([1-69]\\d)(\\d{2,3})(\\d{2})(\\d{2})','leading_digits' => '1[013689]|2[0136]|3[1356]|4[0246]|54|6[03]|90'},{'pattern' => '([1-69]\\d)(\\d{3})(\\d{2})','leading_digits' => '1[13689]|2[136]|3[1356]|4[0246]|54|6[03]|90'},{'pattern' => '(\\d{3})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '1[2457]|2[2457-9]|3[0247-9]|4[1357-9]|5[0-35-9]|6[124-9]|9(?:[125-8]|3[0-5]|4[0-3])'},{'pattern' => '(\\d{3})(\\d{2,3})(\\d{2})','leading_digits' => '1[2457]|2[2457-9]|3[0247-9]|4[1357-9]|5[0-35-9]|6[124-9]|9(?:[125-8]|3[0-5]|4[0-3])'},{'pattern' => '(7\\d)(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '7'},{'pattern' => '(20)(\\d{2,3})(\\d{2})','leading_digits' => '20'},{'pattern' => '(9[034]\\d)(\\d{2})(\\d{2})(\\d{3})','leading_digits' => '9[034]'}];
my $validators = {'personal_number' => '75\\d{7}','toll_free' => '20\\d{4,7}','pager' => '74\\d{7}','mobile' => '7[0236]\\d{7}','voip' => '','fixed_line' => '1(?:0[1-8]\\d{6}|[136]\\d{5,7}|(?:2[0-35]|4[0-4]|5[0-25-9]|7[13-6]|[89]\\d)\\d{5,6})|2(?:[136]\\d{5,7}|(?:2[0-7]|4[0136-8]|5[0138]|7[018]|8[01]|9[0-57])\\d{5,6})|3(?:[356]\\d{5,7}|(?:0[0-4]|1\\d|2[0-25]|4[056]|7[0-2]|8[0-3]|9[023])\\d{5,6})|4(?:[0246]\\d{5,7}|(?:1[0-8]|3[0135]|5[14-79]|7[0-246-9]|8[0156]|9[0-689])\\d{5,6})|5(?:0[0-6]|[15][0-5]|2[0-68]|3[0-4]|4\\d|6[03-5]|7[013]|8[0-79]|9[01])\\d{5,6}|6(?:[03]\\d{5,7}|(?:1[1-3]|2[0-4]|4[02-57]|5[0-37]|6[0-3]|7[0-2]|8[0247]|9[0-356])\\d{5,6})|8\\d{6,8}|9(?:0\\d{5,7}|(?:1[0-68]|2\\d|3[02-59]|[45][0-4]|[68][01]|7[0135-8])\\d{5,6})','special_rate' => '(77\\d{7})|(9(?:00|39|44)\\d{7})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (4611 => "Norrk\�\�ping",46120 => "\�\�tvidaberg",46121 => "S\�\�derk\�\�ping",46122 => "Finsp\�\�ng",46123 => "Valdemarsvik",46125 => "Vikbolandet",4613 => "Link\�\�ping",46140 => "Tran\�\�s",46141 => "Motala",46142 => "Mj\�\�lby\-Sk\�\�nninge\-Boxholm",46143 => "Vadstena",46144 => "\�\�desh\�\�g",46150 => "Katrineholm",46151 => "Ving\�\�ker",46152 => "Str\�\�ngn\�\�s",46155 => "Nyk\�\�ping\-Oxel\�\�sund",46156 => "Trosa\-Vagnh\�\�rad",46157 => "Flen\-Malmk\�\�ping",46158 => "Gnesta",46159 => "Mariefred",4616 => "Eskilstuna\-Torsh\�\�lla",46171 => "Enk\�\�ping",46174 => "Alunda",46175 => "Hallstavik\-Rimbo",46176 => "Norrt\�\�lje",4618 => "Uppsala",4619 => "\�\�rebro\-Kumla",4621 => "V\�\�ster\�\�s",46220 => "Hallstahammar\-Surahammar",46221 => "K\�\�ping",46222 => "Skinnskatteberg",46224 => "Sala\-Heby",46225 => "Hedemora\-S\�\�ter",46226 => "Avesta\-Krylbo",46227 => "Kungs\�\�r",46240 => "Ludvika\-Smedjebacken",46241 => "Gagnef\-Floda",46243 => "Borl\�\�nge",46246 => "Sv\�\�rdsj\�\�\-Enviken",46247 => "Leksand\-Insj\�\�n",46248 => "R\�\�ttvik",46250 => "Mora\-Orsa",46251 => "\�\�lvdalen",46253 => "Idre\-S\�\�rna",4626 => "G\�\�vle\-Sandviken",46270 => "S\�\�derhamn",46271 => "Alfta\-Edsbyn",46278 => "Bolln\�\�s",46280 => "Malung",46281 => "Vansbro",46290 => "Hofors\-Storvik",46291 => "Hedesunda\-\�\�sterf\�\�rnebo",46292 => "T\�\�rnsj\�\�\-\�\�sterv\�\�la",46293 => "Tierp\-S\�\�derfors",46294 => "Karlholmsbruk\-Sk\�\�rplinge",46295 => "\�\�rbyhus\-Dannemora",46297 => "Ockelbo\-Hamr\�\�nge",46300 => "Kungsbacka",46301 => "Hind\�\�s",46303 => "Kung\�\�lv",4631 => "Gothenburg",46320 => "Kinna",46321 => "Ulricehamn",46322 => "Alings\�\�s\-V\�\�rg\�\�rda",46325 => "Svenljunga\-Tranemo",4633 => "Bor\�\�s",46340 => "Varberg",46345 => "Hyltebruk\-Torup",46346 => "Falkenberg",4635 => "Halmstad",4636 => "J\�\�nk\�\�ping\-Huskvarna",46370 => "V\�\�rnamo",46371 => "Gislaved\-Anderstorp",46372 => "Ljungby",46380 => "N\�\�ssj\�\�",46381 => "Eksj\�\�",46382 => "S\�\�vsj\�\�",46383 => "Vetlanda",46390 => "Gr\�\�nna",46392 => "Mullsj\�\�",46393 => "Vaggeryd",4640 => "Malm\�\�",46410 => "Trelleborg",46411 => "Ystad",46413 => "Esl\�\�v\-H\�\�\�\�r",46414 => "Simrishamn",46415 => "H\�\�rby",46416 => "Sj\�\�bo",46417 => "Tomelilla",46418 => "Landskrona\-Sval\�\�v",4642 => "Helsingborg\-H\�\�gan\�\�s",46430 => "Laholm",46431 => "\�\�ngelholm\-B\�\�stad",46433 => "Markaryd\-Str\�\�msn\�\�sbruk",46435 => "Klippan\-Perstorp",4644 => "Kristianstad",46451 => "H\�\�ssleholm",46454 => "Karlshamn\-Olofstr\�\�m",46455 => "Karlskrona",46456 => "S\�\�lvesborg\-Brom\�\�lla",46457 => "Ronneby",46459 => "Ryd",4646 => "Lund",46470 => "V\�\�xj\�\�",46471 => "Emmaboda",46472 => "Alvesta\-Rydaholm",46474 => "\�\�seda\-Lenhovda",46476 => "\�\�lmhult",46477 => "Tingsryd",46478 => "Lessebo",46479 => "Osby",46480 => "Kalmar",46481 => "Nybro",46485 => "\�\�land",46486 => "Tors\�\�s",46490 => "V\�\�stervik",46491 => "Oskarshamn\-H\�\�gsby",46492 => "Vimmerby",46493 => "Gamleby",46494 => "Kisa",46496 => "Mariannelund",46498 => "Gotland",46499 => "M\�\�nster\�\�s",46500 => "Sk\�\�vde",46501 => "Mariestad",46502 => "Tidaholm",46503 => "Hjo",46504 => "Tibro",46505 => "Karlsborg",46506 => "T\�\�reboda\-Hova",46510 => "Lidk\�\�ping",46511 => "Skara\-G\�\�tene",46512 => "Vara\-Nossebro",46514 => "Gr\�\�storp",46515 => "Falk\�\�ping",46520 => "Trollh\�\�ttan",46521 => "V\�\�nersborg",46522 => "Uddevalla",46523 => "Lysekil",46524 => "Munkedal",46525 => "Grebbestad",46526 => "Str\�\�mstad",46528 => "F\�\�rgelanda",46530 => "Mellerud",46531 => "Bengtsfors",46532 => "\�\�m\�\�l",46533 => "S\�\�ffle",46534 => "Ed",4654 => "Karlstad",46550 => "Kristinehamn",46551 => "Gullsp\�\�ng",46552 => "Deje",46553 => "Molkom",46554 => "Kil",46560 => "Torsby",46563 => "Hagfors\-Munkfors",46564 => "Syssleb\�\�ck",46565 => "Sunne",46570 => "Arvika",46571 => "Charlottenberg\-\�\�motfors",46573 => "\�\�rj\�\�ng",46580 => "Kopparberg",46581 => "Lindesberg",46582 => "Hallsberg",46583 => "Askersund",46584 => "Lax\�\�",46585 => "Fjugesta\-Svart\�\�",46587 => "Nora",46589 => "Arboga",46590 => "Filipstad",46591 => "H\�\�llefors\-Grythyttan",4660 => "Sundsval\-Timr\�\�",46611 => "H\�\�rn\�\�sand",46612 => "Kramfors",46613 => "Ull\�\�nger",46620 => "Sollefte\�\�",46621 => "Junsele",46622 => "N\�\�s\�\�ker",46623 => "Ramsele",46624 => "Backe",4663 => "\�\�stersund",46640 => "Krokom",46642 => "Lit",46643 => "Hallen\-Oviken",46644 => "Hammerdal",46645 => "F\�\�llinge",46647 => "\�\�re\-J\�\�rpen",46650 => "Hudiksvall",46651 => "Ljusdal",46652 => "Bergsj\�\�",46653 => "Delsbo",46657 => "Los",46660 => "\�\�rnsk\�\�ldsvik",46661 => "Bredbyn",46662 => "Bj\�\�rna",46663 => "Husum",46670 => "Str\�\�msund",46671 => "Hoting",46672 => "G\�\�ddede",46680 => "Sveg",46682 => "R\�\�tan",46684 => "Hede\-Fun\�\�sdalen",46687 => "Svenstavik",46690 => "\�\�nge",46691 => "Torpshammar",46692 => "Liden",46693 => "Br\�\�cke\-G\�\�ll\�\�",46696 => "Hammarstrand",468 => "Stockholm",4690 => "Ume\�\�",46910 => "Skellefte\�\�",46911 => "Pite\�\�",46912 => "Byske",46913 => "L\�\�v\�\�nger",46915 => "Bastutr\�\�sk",46916 => "J\�\�rn",46918 => "Norsj\�\�",46920 => "Lule\�\�",46921 => "Boden",46922 => "Haparanda",46923 => "Kalix",46924 => "R\�\�ne\�\�",46925 => "Lakatr\�\�sk",46926 => "\�\�verkalix",46927 => "\�\�vertorne\�\�",46928 => "Harads",46929 => "\�\�lvsbyn",46930 => "Nordmaling",46932 => "Bjurholm",46933 => "Vindeln",46934 => "Robertsfors",46935 => "V\�\�nn\�\�s",46940 => "Vilhelmina",46941 => "\�\�sele",46942 => "Dorotea",46950 => "Lycksele",46951 => "Storuman",46952 => "Sorsele",46953 => "Mal\�\�",46954 => "T\�\�rnaby",46961 => "Arjeplog",46970 => "G\�\�llivare",46971 => "Jokkmokk",46975 => "Hakkas",46976 => "Vuollerim",46977 => "Korpilombolo",46978 => "Pajala",46980 => "Kiruna",46981 => "Vittangi",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"46$prefix"} if exists($map{"46$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+46|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
