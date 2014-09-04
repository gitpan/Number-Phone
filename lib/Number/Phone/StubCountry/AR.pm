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
package Number::Phone::StubCountry::AR;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220736;

my $formatters = [{'pattern' => '([68]\\d{2})(\\d{3})(\\d{4})','leading_digits' => '[68]'},{'pattern' => '(9)(11)(\\d{4})(\\d{4})','leading_digits' => '911'},{'leading_digits' => '9(?:2(?:2[013]|3[067]|49|6[01346]|80|9(?:[179]|4[13479]|8[0-24-9]))|3(?:36|4[12358]|5(?:[18]|3[014-689])|6[24]|7[069]|8(?:[01]|3[013469]|5[0-39]|7[0-2459]|8[0-49])))','pattern' => '(9)(\\d{3})(\\d{3})(\\d{4})'},{'leading_digits' => '9(?:3(?:537|8(?:73|88)))','pattern' => '(9)(\\d{4})(\\d{3})(\\d{3})'},{'pattern' => '(9)(\\d{4})(\\d{2})(\\d{4})','leading_digits' => '9[23]'},{'leading_digits' => '1','pattern' => '(11)(\\d{4})(\\d{4})'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})','leading_digits' => '2(?:2[013]|3[067]|49|6[01346]|80|9(?:[17-9]|4[13479]))|3(?:36|4[12358]|5(?:[18]|3[0-689])|6[24]|7[069]|8(?:[01]|3[013469]|5[0-39]|7[0-2459]|8[0-49]))'},{'pattern' => '(\\d{4})(\\d{3})(\\d{3})','leading_digits' => '3(?:537|8(?:73|88))'},{'pattern' => '(\\d{4})(\\d{2})(\\d{4})','leading_digits' => '[23]'},{'pattern' => '(\\d{3})','leading_digits' => '1[012]|911'}];
my $validators = {'special_rate' => '()|(60[04579]\\d{7})|(810\\d{7})','personal_number' => '','toll_free' => '800\\d{7}','geographic' => '11\\d{8}|(?:2(?:2(?:[013]\\d|2[13-79]|4[1-6]|5[2457]|6[124-8]|7[1-4]|8[13-6]|9[1267])|3(?:1[467]|2[03-6]|3[13-8]|[49][2-6]|5[2-8]|[067]\\d)|4(?:7[3-8]|9\\d)|6(?:[01346]\\d|2[24-6]|5[15-8])|80\\d|9(?:[0124789]\\d|3[1-6]|5[234]|6[2-46]))|3(?:3(?:2[79]|6\\d|8[2578])|4(?:[78]\\d|0[0124-9]|[1-35]\\d|4[24-7]|6[02-9]|9[123678])|5(?:[138]\\d|2[1245]|4[1-9]|6[2-4]|7[1-6])|6[24]\\d|7(?:[0469]\\d|1[1568]|2[013-9]|3[145]|5[14-8]|7[2-57]|8[0-24-9])|8(?:[013578]\\d|2[15-7]|4[13-6]|6[1-357-9]|9[124]))|670\\d)\\d{6}','fixed_line' => '11\\d{8}|(?:2(?:2(?:[013]\\d|2[13-79]|4[1-6]|5[2457]|6[124-8]|7[1-4]|8[13-6]|9[1267])|3(?:1[467]|2[03-6]|3[13-8]|[49][2-6]|5[2-8]|[067]\\d)|4(?:7[3-8]|9\\d)|6(?:[01346]\\d|2[24-6]|5[15-8])|80\\d|9(?:[0124789]\\d|3[1-6]|5[234]|6[2-46]))|3(?:3(?:2[79]|6\\d|8[2578])|4(?:[78]\\d|0[0124-9]|[1-35]\\d|4[24-7]|6[02-9]|9[123678])|5(?:[138]\\d|2[1245]|4[1-9]|6[2-4]|7[1-6])|6[24]\\d|7(?:[0469]\\d|1[1568]|2[013-9]|3[145]|5[14-8]|7[2-57]|8[0-24-9])|8(?:[013578]\\d|2[15-7]|4[13-6]|6[1-357-9]|9[124]))|670\\d)\\d{6}','pager' => '','voip' => '','mobile' => '675\\d{7}|9(?:11[2-9]\\d{7}|(?:2(?:2[013]|3[067]|49|6[01346]|80|9[147-9])|3(?:36|4[12358]|5[138]|6[24]|7[069]|8[013578]))[2-9]\\d{6}|\\d{4}[2-9]\\d{5})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (5411 => "Buenos\ Aires",54220 => "Merlo",54221 => "La\ Plata",542221 => "Ver\�\�nica\,\ Buenos\ Aires",542223 => "Coronel\ Brandsen",542224 => "Buenos\ Aires\ Province",542225 => "San\ Vicente\,\ Buenos\ Aires",542226 => "Ca\�\�uelas",542227 => "Lobos",542229 => "Buenos\ Aires\ Province",54223 => "Mar\ del\ Plata\,\ General\ Pueyrred\�\�n",542241 => "Buenos\ Aires\ Province",542243 => "General\ Belgrano\,\ Buenos\ Aires",542244 => "Las\ Flores",542245 => "Dolores\,\ Buenos\ Aires",542246 => "Santa\ Teresita\,\ La\ Costa",542252 => "San\ Clemente\ del\ Tuy\�\�\,\ La\ Costa",542254 => "Pinamar\,\ Buenos\ Aires",542255 => "Villa\ Gesell\,\ Buenos\ Aires",542257 => "Mar\ de\ Ajo\,\ La\ Costa",542261 => "Lober\�\�a\,\ Buenos\ Aires",542262 => "Necochea",542265 => "Coronel\ Vidal\,\ Buenos\ Aires",542266 => "Buenos\ Aires\ Province",542267 => "General\ Juan\ Madariaga",542268 => "Maip\�\�\,\ Buenos\ Aires",542271 => "San\ Miguel\ del\ Monte\,\ Buenos\ Aires",542272 => "Navarro\,\ Buenos\ Aires",542281 => "La\ Matanza",542283 => "Buenos\ Aires\ Province",542284 => "Olavarr\�\�a\,\ Buenos\ Aires",542285 => "Laprida\,\ Buenos\ Aires",542286 => "General\ Lamadrid\,\ Buenos\ Aires",542291 => "Miramar\,\ Buenos\ Aires",542292 => "Buenos\ Aires\ Province",542296 => "Ayacucho\,\ Buenos\ Aires",542297 => "Buenos\ Aires\ Province",54230 => "Pilar\,\ Buenos\ Aires",542302 => "General\ Pico\,\ La\ Pampa",542314 => "Bol\�\�var\,\ Buenos\ Aires",542316 => "Daireaux\,\ Buenos\ Aires",542317 => "9\ de\ Julio\,\ Buenos\ Aires",542320 => "Jos\�\�\ C\.\ Paz",542323 => "Luj\�\�n",542324 => "Mercedes",542325 => "San\ Andr\�\�s\ de\ Giles\/Azcu\�\�naga",542326 => "San\ Antonio\ de\ Areco",542331 => "Realic\�\�\,\ La\ Pampa",542333 => "Quem\�\�\ Quem\�\�",542334 => "Eduardo\ Castex\,\ La\ Pampa",542335 => "Ingeniero\ Luiggi\,\ La\ Pampa",542336 => "Capital",542337 => "Buenos\ Aires\ Province",542342 => "Bragado",542344 => "Buenos\ Aires\ Province",542345 => "General\ Pueyrred\�\�n",542346 => "Chivilcoy",542352 => "Chacabuco",542353 => "General\ Arenales\,\ Buenos\ Aires",542354 => "Buenos\ Aires\ Province",542355 => "Lincoln\,\ Buenos\ Aires",542356 => "General\ Pinto\,\ Buenos\ Aires",542358 => "Buenos\ Aires\ Province",54236 => "Jun\�\�n\,\ Buenos\ Aires",54237 => "Moreno",542392 => "Buenos\ Aires\/Trenque\ Lauquen",542394 => "Salliquel\�\�\,\ Buenos\ Aires",542395 => "La\ Matanza",542396 => "Pehuaj\�\�\,\ Buenos\ Aires",542473 => "Col\�\�n\,\ Buenos\ Aires",542474 => "Buenos\ Aires\ Province",542475 => "Rojas\,\ Buenos\ Aires",542477 => "Pergamino",542478 => "Arrecifes\,\ Buenos\ Aires",54249 => "Tandil\,\ Buenos\ Aires",54260 => "San\ Rafael",54261 => "Mendoza\,\ Capital",542622 => "Tunuy\�\�n\,\ Mendoza",542625 => "General\ Alvear\,\ Mendoza",54263 => "San\ Martin",54264 => "San\ Juan\,\ Capital",542646 => "Valle\ F\�\�rtil",542656 => "Merlo\,\ San\ Luis",542657 => "Villa\ Mercedes\,\ General\ Pedernera",54266 => "San\ Luis\,\ La\ Capital",54280 => "Trelew\,\ Rawson",542901 => "Ushuaia",542902 => "El\ Calafate\,\ Lago\ Argentino",54291 => "Bah\�\�a\ Blanca",542920 => "Viedma\,\ Adolfo\ Alsina",542921 => "Coronel\ Dorrego\,\ Buenos\ Aires",542922 => "Coronel\ Pringles\,\ Buenos\ Aires",542923 => "Pig\�\�\�\�\,\ Buenos\ Aires",542924 => "Darregueira\,\ Buenos\ Aires",542926 => "Coronel\ Su\�\�rez\,\ Buenos\ Aires",542927 => "Buenos\ Aires\ Province",542928 => "Pedro\ Luro\,\ Buenos\ Aires",542931 => "R\�\�o\ Colorado\,\ R\�\�o\ Negro",542932 => "Punta\ Alta\,\ Buenos\ Aires",542934 => "San\ Antonio\ Oeste\,\ R\�\�o\ Negro",542936 => "Buenos\ Aires\ Province",54294 => "San\ Carlos\ de\ Bariloche\,\ R\�\�o\ Negro",542940 => "Ingeniero\ Jacobacci\,\ R\�\�o\ Negro",542942 => "Zapala",542945 => "Esquel\,\ Futaleuf\�\�",542946 => "Choele\ Choel\,\ R\�\�o\ Negro",542948 => "Chos\ Malal\,\ Neuqu\�\�n",542952 => "General\ Acha\,\ La\ Pampa",542953 => "Macach\�\�n\,\ La\ Pampa",542954 => "Santa\ Rosa\,\ La\ Pampa",542962 => "Puerto\ San\ Juli\�\�n\,\ Santa\ Cruz",542964 => "R\�\�o\ Grande",542966 => "R\�\�o\ Gallegos\,\ Ger\ Aike",54297 => "Comodoro\ Rivadavia\,\ Escalante",542972 => "San\ Mart\�\�n\ de\ los\ Andes",54298 => "General\ Roca\,\ R\�\�o\ Negro",542983 => "Tres\ Arroyos",54299 => "Neuqu\�\�n\,\ Confluencia",543327 => "L\�\�pez\ Camelo\,\ Buenos\ Aires",543329 => "Buenos\ Aires\ Province",54336 => "San\ Nicol\�\�s\,\ Buenos\ Aires",543382 => "Rufino\,\ Santa\ Fe",543385 => "Laboulaye\,\ C\�\�rdoba",543388 => "General\ Villegas\,\ Buenos\ Aires",543400 => "Villa\ Constituci\�\�n\,\ Santa\ Fe",543401 => "El\ Trebol\,\ Santa\ Fe",543402 => "Santa\ Fe",543404 => "Rosario",543405 => "San\ Javier\,\ Santa\ Fe",543406 => "San\ Jorge\,\ Santa\ Fe",543407 => "Ramallo",543408 => "San\ Crist\�\�bal\,\ Santa\ Fe",54341 => "Rosario",54342 => "Santa\ Fe\,\ La\ Capital",54343 => "Paran\�\�",543442 => "Concepci\�\�n\ del\ Uruguay\,\ Entre\ R\�\�os",543444 => "Gualeguay\,\ Entre\ R\�\�os",543445 => "Rosario\ del\ Tala\,\ Entre\ R\�\�os",543446 => "Gualeguaych\�\�",543447 => "Col\�\�n",54345 => "Concordia\,\ Entre\ R\�\�os",543460 => "Santa\ Teresa\,\ Santa\ Fe",543462 => "Venado\ Tuerto\,\ General\ L\�\�pez",543463 => "Canals\,\ C\�\�rdoba",543464 => "Casilda\,\ Santa\ Fe",543465 => "Firmat\,\ Santa\ Fe",543467 => "San\ Jos\�\�\ de\ La\ Esquina\,\ Santa\ Fe",543469 => "Acebal\,\ Santa\ Fe",543471 => "Ca\�\�ada\ de\ G\�\�mez\,\ Santa\ Fe",543472 => "Marcos\ Ju\�\�rez",543476 => "San\ Lorenzo\,\ Santa\ Fe",54348 => "Escobar\,\ Buenos\ Aires",543482 => "Reconquista\,\ Santa\ Fe",543483 => "Rosario",543487 => "Z\�\�rate",543489 => "Campana",543491 => "Ceres\,\ Santa\ Fe",543492 => "Rafaela\,\ Santa\ Fe",543493 => "Sunchales\,\ Santa\ Fe",543496 => "Esperanza\,\ Santa\ Fe",543498 => "San\ Justo\,\ Santa\ Fe",54351 => "C\�\�rdoba\,\ Capital",543521 => "Capital",543525 => "Jes\�\�s\ Mar\�\�a\,\ C\�\�rdoba",54353 => "Villa\ Mar\�\�a\,\ General\ San\ Martin",543541 => "Villa\ Carlos\ Paz\,\ C\�\�rdoba",543543 => "C\�\�rdoba\,\ Capital",543544 => "Villa\ Dolores\,\ C\�\�rdoba",543546 => "Villa\ General\ Belgrano\,\ C\�\�rdoba",543547 => "Alta\ Gracia\,\ C\�\�rdoba",543548 => "La\ Falda\,\ C\�\�rdoba",543549 => "C\�\�rdoba",543562 => "Morteros\,\ C\�\�rdoba",543563 => "Capital",543564 => "C\�\�rdoba",543571 => "R\�\�o\ Tercero\,\ C\�\�rdoba",543572 => "Capital",543573 => "Villa\ del\ Rosario\,\ C\�\�rdoba",543576 => "C\�\�rdoba",54358 => "R\�\�o\ Cuarto",54362 => "Resistencia\,\ San\ Fernando",54364 => "Presidencia\ Roque\ S\�\�enz\ Pena\,\ Chaco",54370 => "Formosa",543718 => "Clorinda\,\ Formosa",543725 => "Chaco",543731 => "Charata\,\ Chacabuco",543734 => "Machagai\,\ Chaco",543735 => "Villa\ Angela\,\ Mayor\ Luis\ Fonta",543743 => "Puerto\ Rico\,\ Misiones",543751 => "El\ Dorado\,\ Misiones",543754 => "Leandro\ N\.\ Alem\,\ Misiones",543755 => "Ober\�\�\,\ Misiones",543756 => "Santo\ Tom\�\�\,\ Corrientes",543757 => "Puerto\ Iguaz\�\�\,\ Misiones",543758 => "Ap\�\�stoles\,\ Misiones",54376 => "Posadas\,\ Capital",543772 => "Paso\ de\ Los\ Libres\,\ Corrientes\/Resistencia",543773 => "Mercedes\,\ Corrientes",543774 => "Curuz\�\�\ Cuati\�\�\,\ Corrientes",543775 => "Monte\ Caseros\,\ Corrientes",543777 => "Goya\,\ Corrientes",54379 => "Corrientes\,\ Capital",54380 => "La\ Rioja",54381 => "San\ Miguel\ de\ Tucum\�\�n\,\ Capital",543825 => "Chilecito\,\ La\ Rioja",54383 => "Catamarca",543835 => "Andalgal\�\�\,\ Catamarca",543844 => "A\�\�atuya\,\ Santiago\ del\ Estero",54385 => "Santiago\ del\ Estero\,\ Capital",543863 => "Monteros\,\ Tucum\�\�n",543865 => "Concepci\�\�n\,\ Tucum\�\�n",543868 => "Cafayate\,\ Salta",54387 => "Salta\,\ Capital",54388 => "San\ Salvador\ de\ Jujuy\,\ Doctor\ Manuel\ Belgrano",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"54$prefix"} if exists($map{"54$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+54|\D)//g;
  $number =~ s/(^0)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
