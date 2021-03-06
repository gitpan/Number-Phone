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
package Number::Phone::StubCountry::CO;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221722;

my $formatters = [{'pattern' => '(\\d)(\\d{7})','leading_digits' => '1(?:8[2-9]|9(?:09|[1-3])|[2-7])|[24-8]'},{'leading_digits' => '3','pattern' => '(\\d{3})(\\d{7})'},{'pattern' => '(1)(\\d{3})(\\d{7})','leading_digits' => '1(?:800|9(?:0[01]|4[78]))'}];
my $validators = {'personal_number' => '','voip' => '','mobile' => '3(?:0[0-5]|1\\d|2[0-2]|5[01])\\d{7}','special_rate' => '()|(19(?:0[01]|4[78])\\d{7})|()','pager' => '','geographic' => '[124-8][2-9]\\d{6}','fixed_line' => '[124-8][2-9]\\d{6}','toll_free' => '1800\\d{7}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (5712 => "Bogot\�\�",5713 => "Bogot\�\�",5714 => "Bogot\�\�",5715 => "Bogot\�\�",5716 => "Bogot\�\�",5717 => "Bogot\�\�",571820 => "Madrid",571821 => "Funza",571822 => "Funza",5718230 => "Subachoque",5718232 => "Funza",5718240 => "El\ Rosal",5718241 => "El\ Rosal",57182420 => "La\ Pradera",57182428 => "Subachoque",57182429 => "Subachique",5718243 => "Bojaca",5718245 => "Subachoque",5718246 => "Puente\ Piedra",5718247 => "La\ Punta",5718249 => "Zipacon",5718250 => "Madrid",5718251 => "Madrid",5718252 => "Madrid",5718253 => "Madrid",5718254 => "Madrid",5718255 => "Madrid",5718256 => "Madrid",5718257 => "Funza",571826 => "Funza",571827 => "Mosquera",5718283 => "Mosquera",5718288 => "Madrid",5718289 => "Madrid",571830 => "Girardot",571831 => "Girardot",571832 => "Girardot",571833 => "Girardot",5718370 => "Jerusal\�\�n",5718371 => "Guataqui",5718373 => "Beltr\�\�n",5718375 => "Nari\�\�o",5718376 => "Tocaima",5718381 => "Agua\ de\ Dios",5718383 => "Nilo",5718384 => "Viota",5718385 => "Nari\�\�o",5718386 => "Apulo",57183925 => "Nilo",57183926 => "Nilo",57183927 => "Nilo",57183928 => "Nilo",57183929 => "La\ Esmeralda",5718393 => "Girardot",5718397 => "Apulo",5718398 => "Apulo",5718402 => "San\ Antonio\ de\ Tequendama",5718403 => "Choachi",5718404 => "Fomeque",5718412 => "Santa\ In\�\�s",5718416 => "Guaduas",5718417 => "Guaduas",5718419 => "Pandi",571842 => "Facatativa",5718430 => "Facatativa",5718431 => "Facatativa",57184330 => "Ninaima",57184331 => "Ninaima",57184332 => "Ninaima",57184333 => "Tobia",57184334 => "Tobia",5718434 => "Cartagenita",5718435 => "Cartagenita",5718436 => "Facatativa",5718437 => "Facatativa",5718438 => "Facatativa",5718439 => "Facatativa",5718440 => "Facatativa",5718441 => "Viani",5718442 => "Cachipay",5718443 => "Cachipay",5718444 => "Villeta",5718445 => "Villeta",5718446 => "Villeta",5718447 => "Villeta",5718449 => "La\ Pe\�\�a",5718450 => "San\ Antonio\ de\ Tequendama",5718451 => "Nocaima",571845340 => "La\ Florida",571845341 => "La\ Florida",571845342 => "La\ Florida",571845343 => "La\ Florida",571845344 => "La\ Florida",571845345 => "La\ Florida",5718480 => "Quebradanegra",5718481 => "Quebradanegra",5718482 => "La\ Magdalena",57230 => "Cali",57231 => "Cali",57232 => "Cali",57233 => "Cali",57234 => "Cali",57235 => "Cali",57236 => "Cali",57272 => "Pasto",57273 => "Pasto",57288 => "Cali",57289 => "Cali",57290 => "Cali",57292 => "Cali",5742 => "Medell\�\�n",5743 => "Medell\�\�n",5744 => "Medell\�\�n",5745 => "Medell\�\�n",574842 => "Medell\�\�n",5748510 => "Medell\�\�n",5748511 => "Medell\�\�n",5748720 => "Medell\�\�n",5748721 => "Medell\�\�n",5748722 => "Medell\�\�n",5748723 => "Medell\�\�n",5748724 => "Medell\�\�n",5748725 => "Medell\�\�n",5748726 => "Medell\�\�n",5749092 => "Medell\�\�n",574911 => "Medell\�\�n",574913 => "Medell\�\�n",574917 => "Medell\�\�n",57492 => "Medell\�\�n",57532 => "Barranquilla",57533 => "Barranquilla",57534 => "Barranquilla",57535 => "Barranquilla",57536 => "Barranquilla",57537 => "Barranquilla",57538 => "Barranquilla",57557 => "Valledupar",57562951 => "Cartagena",57562956 => "Cartagena",57562957 => "Cartagena",57562958 => "Cartagena",57562959 => "Cartagena",57565 => "Cartagena",57566 => "Cartagena",57567 => "Cartagena",57568 => "Cartagena",57631 => "Pereira",57632 => "Pereira",57633 => "Pereira",57634 => "Pereira",57635 => "Pereira",57687 => "Manizales",57688 => "Manizales",57689 => "Manizales",57757 => "Cucuta",57758 => "Cucuta",57761 => "Bucaramanga",57763 => "Bucaramanga",57764 => "Bucaramanga",57765 => "Bucaramanga",57767 => "Bucaramanga",57768 => "Bucaramanga",57790 => "Bucaramanga",57826 => "Ibague",57827 => "Ibague",57866 => "Villavicencio",57886 => "Neiva",57887 => "Neiva",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"57$prefix"} if exists($map{"57$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+57|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
