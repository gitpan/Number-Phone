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
package Number::Phone::StubCountry::AM;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121122000027;

my $formatters = [{'pattern' => '(\\d{2})(\\d{6})','leading_digits' => '1|47'},{'pattern' => '(\\d{2})(\\d{6})','leading_digits' => '[5-7]|9[1-9]'},{'pattern' => '(\\d{3})(\\d{5})','leading_digits' => '[23]'},{'pattern' => '(\\d{3})(\\d{2})(\\d{3})','leading_digits' => '8|90'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{5}','pager' => '','mobile' => '(?:55|77|9[1-9])\\d{6}','voip' => '60[2-6]\\d{5}','fixed_line' => '(?:10\\d|2(?:2[2-46]|3[1-8]|4[2-69]|5[2-7]|6[1-9]|8[1-7])|3[12]2|47\\d)\\d{5}','special_rate' => '(80[1-4]\\d{5})|(90[016]\\d{5})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (37410 => "Yerevan\/Jrvezh",374222 => "Abovyan\/Akunk\/Byureghavan\/Nor\ Gyugh\/Verin\ Ptghni",3742229 => "Zovk",37422290 => "Mayakovsky",37422291 => "Balahovit\/Kamaris",37422293 => "Aramus",37422294 => "Arzni",37422296 => "Ptghni",37422297 => "Geghashen",37422299 => "Kotayk",374223 => "Hankavan\/Hrazdan\/Tsakhkadzor",37422391 => "Lernanist",37422393 => "Meghradzor",37422394 => "Pyunik",37422397 => "Solak",37422398 => "Bjni",374224 => "Kanakeravan\/Nor\ Geghi\/Nor\ Hajn\/Yeghvard",37422452 => "Zovuni",37422453 => "Proshyan",37422454 => "Argel",374226 => "Charentsavan",37422672 => "Arzakan",37422675 => "Alapars\/Vardanavank",374231 => "Echmiadzin\/Musaler\/Parakar\/Zvartnots",37423190 => "Baghramian",37423191 => "Vache",37423195 => "Norakert",37423198 => "Jrarat",37423199 => "Khoronk",374232 => "Aghdzq\/Ashtarak\/Karbi\/Oshakan",374233 => "Baghramyan\/Lernagog",37423374 => "Myasnikyan",37423375 => "Karakert",37423376 => "Dalarik",374234 => "Vedi\/Vosketap",374235 => "Artashat\/Aygezard\/Dalar\/Kaghtsrashen\/Mkhchyan\/Shahumyan",374236 => "Ayntap\/Masis\/Nor\ Kharberd\/Norabats",374237 => "Araks\/Armavir\/Hoktember\/Lenughi\/Metsamor\/Zartonk",374238 => "Ararat\/Avshar\/Surenavan\/Yeraskh",374242 => "Maralik",37424291 => "Sarnakhbyur",37424293 => "Shirakavan",37424297 => "Ani\ Kayaran",37424300 => "Akhuryan\/Arapi\/Kamo\/Musayelyan",374244 => "Artik\/Pemzashen",37424492 => "Panik",37424495 => "Arevshat",37424496 => "Mets\ Mantash",374245 => "Ashotsk",374246 => "Amasia",3742490 => "Talin",3742499 => "Aragatsavan",374252 => "Aparan",374253 => "Alaverdi\/Odzun\/Tsaghkashat\/Tumanyan",374254 => "Tashir",374255 => "Spitak",374256 => "Bovadzor\/Stepanavan",37425694 => "Agarak",3742570 => "Tsakhkahovit",374261 => "Sevan",374262 => "Martuni",374263 => "Azatamut\/Getahovit\/Ijevan\/Yenokavan",374264 => "Gavar\/Sarukhan",374265 => "Tchambarak",374266 => "Berdavan\/Koghb\/Noyemberyan",374267 => "Aygepar\/Berd",3742680 => "Dilijan",374269 => "Vardenis",374281 => "Getap\/Salli\/Yeghegnadzor",37428151 => "Khachik",37428191 => "Arpi",37428193 => "Aghavnadzor",37428194 => "Areni",37428195 => "Malishka",37428197 => "Yelpin",37428198 => "Rind",37428199 => "Shatin",374282 => "Vayk",3742830 => "Sisian",374284 => "Goris\/Verishen",37428494 => "Khndzoresk",37428495 => "Shinuhayr",374285 => "Davit\ Bek\/Kajaran\/Kapan",374286 => "Agarak",3742860 => "Meghri",374287 => "Jermuk\/Gyumri",374312 => "Azatan\/Gyumri\/Hatsik",374322 => "Vanadzor",37432293 => "Pambak",37432294 => "Lernapat",37432295 => "Yeghegnut",37432296 => "Margahovit",37432297 => "Dzoraget",37432298 => "Lermontovo",37432299 => "Vahagni",37447 => "Nagorno\-Karabakh",374471 => "Stepanakert",374474 => "Martakert",374475 => "Hadrut",374476 => "Askeran",374477 => "Shushi",37447732 => "Berdzor\/Kashatagh",374478 => "Martuni",374479 => "Stepanakert",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"374$prefix"} if exists($map{"374$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+374|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
