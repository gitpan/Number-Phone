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
our $VERSION = 1.20140904220736;

my $formatters = [{'pattern' => '(\\d{2})(\\d{6})','leading_digits' => '1|47'},{'pattern' => '(\\d{2})(\\d{6})','leading_digits' => '[5-7]|9[1-9]'},{'leading_digits' => '[23]','pattern' => '(\\d{3})(\\d{5})'},{'leading_digits' => '8|90','pattern' => '(\\d{3})(\\d{2})(\\d{3})'}];
my $validators = {'mobile' => '(?:55|77|9[1-9])\\d{6}','voip' => '60[2-6]\\d{5}','pager' => '','fixed_line' => '(?:1[01]\\d|2(?:2[2-46]|3[1-8]|4[2-69]|5[2-7]|6[1-9]|8[1-7])|3[12]2|47\\d)\\d{5}','geographic' => '(?:1[01]\\d|2(?:2[2-46]|3[1-8]|4[2-69]|5[2-7]|6[1-9]|8[1-7])|3[12]2|47\\d)\\d{5}','personal_number' => '','toll_free' => '800\\d{5}','special_rate' => '(80[1-4]\\d{5})|(90[016]\\d{5})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (37410 => "Yerevan\/Jrvezh",37411 => "Yerevan",374222 => "Abovyan\/Akunk\/Byureghavan\/Nor\ Gyugh\/Verin\ Ptghni",3742227 => "Garni",3742229 => "Zovk",37422290 => "Mayakovsky",37422291 => "Balahovit\/Kamaris",37422293 => "Aramus",37422294 => "Arzni",37422296 => "Ptghni",37422297 => "Geghashen",37422298 => "Arinj",37422299 => "Kotayk",374223 => "Hankavan\/Hrazdan\/Tsakhkadzor",37422391 => "Lernanist",37422393 => "Meghradzor",37422394 => "Pyunik",37422397 => "Solak",37422398 => "Bjni",374224 => "Kanakeravan\/Nor\ Geghi\/Nor\ Hajn\/Yeghvard",37422452 => "Zovuni",37422453 => "Proshyan",37422454 => "Argel",374226 => "Charentsavan",37422672 => "Arzakan",37422675 => "Alapars\/Vardanavank",374231 => "Echmiadzin\/Musaler\/Parakar\/Zvartnots",37423190 => "Baghramyan",37423191 => "Vache",37423195 => "Norakert",37423198 => "Jrarat",37423199 => "Khoronk",374232 => "Aghdzq\/Ashtarak\/Karbi\/Oshakan",37423290 => "Ohanavan",37423294 => "Byurakan",374233 => "Baghramyan\/Lernagog",37423374 => "Myasnikyan",37423375 => "Karakert",37423376 => "Dalarik",374234 => "Vedi\/Vosketap\/Ararat",37423481 => "Aygavan",37423486 => "Urtsadzor",37423492 => "Martirosyan",37423497 => "Pokr\ Vedi",37423498 => "Taperakan",374235 => "Artashat\/Aygezard\/Dalar\/Kaghtsrashen\/Mkhchyan\/Shahumyan",37423572 => "Arevshat",3742359 => "Norashen",374236 => "Ayntap\/Masis\/Nor\ Kharberd\/Norabats",3742363 => "Aintab",37423699 => "Dashtavan",374237 => "Araks\/Armavir\/Hoktember\/Lenughi\/Metsamor\/Zartonk",3742377 => "Mrgashat",37423779 => "Bambakashat",3742379 => "Nalbandian",37423794 => "Margara",37423796 => "Tandzut",37423798 => "Shenavan",374238 => "Ararat\/Avshar\/Surenavan\/Yeraskh",374242 => "Maralik\/Sarnaghbyur",37424293 => "Shirakavan",37424297 => "Ani\ Kayaran",37424300 => "Akhuryan\/Arapi\/Kamo\/Musayelyan",374244 => "Artik\/Pemzashen",37424492 => "Panik",37424495 => "Arevshat",37424496 => "Mets\ Mantash",374245 => "Ashotsk\ region",374246 => "Amasia\ region",374249 => "Talin",37424973 => "Katnaghbyur",3742499 => "Aragatsavan",37424996 => "Nerkin\ Bazmaberd",37424997 => "Mastara",374252 => "Aparan",37425251 => "Kuchak",37425295 => "Artavan",374253 => "Alaverdi\/Odzun\/Tsaghkashat\/Tumanyan",37425352 => "Akhtala",37425353 => "Shnogh",37425356 => "Chochkan",37425357 => "Tumanyan",374254 => "Tashir",3742549 => "Metsavan",374255 => "Spitak\ region",374256 => "Bovadzor\/Stepanavan",37425691 => "Kurtan",37425694 => "Agarak",37425695 => "Lejan",374257 => "Aragats",3742570 => "Tsakhkahovit\ region",374261 => "Sevan",374262 => "Martuni",3742625 => "Vardenik",37426272 => "Lichk",37426299 => "Eranos",374263 => "Azatamut\/Getahovit\/Ijevan\/Yenokavan",37426374 => "Aygehovit",37426392 => "Achajur",37426397 => "Azatamut",374264 => "Gavar\/Sarukhan",374265 => "Tchambarak",37426596 => "Vahan",374266 => "Berdavan\/Koghb\/Noyemberyan",3742665 => "Koghb",3742667 => "Berdavan",37426692 => "Archis",37426693 => "Baghanis",37426695 => "Zorakan",37426696 => "Voskepar",37426699 => "Koti",374267 => "Aygepar\/Berd",3742675 => "Artsvaberd",37426791 => "Navur",37426794 => "Tovuz",37426796 => "Mosesgegh",37426797 => "Norashen",3742680 => "Dilijan",374269 => "Vardenis",374281 => "Getap\/Salli\/Yeghegnadzor",37428151 => "Khachik",37428191 => "Arpi",37428193 => "Aghavnadzor",37428194 => "Areni",37428195 => "Malishka",37428197 => "Yelpin",37428198 => "Rind",37428199 => "Shatin",374282 => "Vayk\ region",3742830 => "Sisian",37428375 => "Tasik",37428396 => "Angehakot",374284 => "Goris\/Verishen",37428427 => "Verishen",37428491 => "Harzhis",37428494 => "Khndzoresk",37428495 => "Shinuhayr",37428499 => "Kornidzor",374285 => "Davit\ Bek\/Kajaran\/Kapan",374286 => "Meghri\/Agarak",37428695 => "Shvanidzor",374287 => "Jermuk",37428794 => "Gndevaz",374312 => "Gyumri\/Akhuryan\ region",374322 => "Vanadzor\/Gugark\ region",37432293 => "Pambak",37432294 => "Lernapat",37432295 => "Yeghegnut",37432296 => "Margahovit",37432297 => "Dzoraget",37432298 => "Lermontovo",37432299 => "Vahagni",37447 => "Nagorno\-Karabakh",374471 => "Stepanakert",374474 => "Martakert",374475 => "Hadrut",374476 => "Askeran",374477 => "Shushi",37447732 => "Berdzor\/Kashatagh",374478 => "Martuni",374479 => "Stepanakert",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"374$prefix"} if exists($map{"374$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+374|\D)//g;
  $number =~ s/(^0)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
