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
package Number::Phone::StubCountry::ZW;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140822223716;

my $formatters = [{'pattern' => '([49])(\\d{3})(\\d{2,5})','leading_digits' => '4|9[2-9]'},{'leading_digits' => '[19]1|7','pattern' => '([179]\\d)(\\d{3})(\\d{3,4})'},{'leading_digits' => '86[24]','pattern' => '(86\\d{2})(\\d{3})(\\d{3})'},{'leading_digits' => '2(?:[278]|0[45]|[49]8)|3(?:08|17|3[78]|[78])|5[15][78]|6(?:[29]8|37|[68][78])','pattern' => '([2356]\\d{2})(\\d{3,5})'},{'pattern' => '(\\d{3})(\\d{3})(\\d{3,4})','leading_digits' => '2(?:[278]|0[45]|48)|3(?:08|17|3[78]|[78])|5[15][78]|6(?:[29]8|37|[68][78])|80'},{'pattern' => '([1-356]\\d)(\\d{3,5})','leading_digits' => '1[3-9]|2(?:[1-469]|0[0-35-9]|[45][0-79])|3(?:0[0-79]|1[0-689]|[24-69]|3[0-69])|5(?:[02-46-9]|[15][0-69])|6(?:[0145]|[29][0-79]|3[0-689]|[68][0-69])'},{'leading_digits' => '1[3-9]|2(?:[1-469]|0[0-35-9]|[45][0-79])|3(?:0[0-79]|1[0-689]|[24-69]|3[0-69])|5(?:[02-46-9]|[15][0-69])|6(?:[0145]|[29][0-79]|3[0-689]|[68][0-69])','pattern' => '([1-356]\\d)(\\d{3})(\\d{3})'},{'leading_digits' => '258[23]|5483','pattern' => '([25]\\d{3})(\\d{3,5})'},{'leading_digits' => '258[23]|5483','pattern' => '([25]\\d{3})(\\d{3})(\\d{3})'},{'pattern' => '(8\\d{3})(\\d{6})','leading_digits' => '86'}];
my $validators = {'pager' => '','mobile' => '7[1378]\\d{7}|86(?:22|44)\\d{6}','toll_free' => '800\\d{7}','fixed_line' => '(?:1[3-9]|2(?:0[45]|[16]|2[28]|[49]8?|58[23]|7[246]|8[1346-9])|3(?:08?|17?|3[78]|[2456]|7[1569]|8[379])|5(?:[07-9]|1[78]|483|5(?:7?|8))|6(?:0|28|37?|[45][68][78]|98?)|848)\\d{3,6}|(?:2(?:27|5|7[135789]|8[25])|3[39]|5[1-46]|6[126-8])\\d{4,6}|2(?:(?:0|70)\\d{5,6}|2[05]\\d{7})|(?:4\\d|9[2-8])\\d{4,7}','geographic' => '(?:1[3-9]|2(?:0[45]|[16]|2[28]|[49]8?|58[23]|7[246]|8[1346-9])|3(?:08?|17?|3[78]|[2456]|7[1569]|8[379])|5(?:[07-9]|1[78]|483|5(?:7?|8))|6(?:0|28|37?|[45][68][78]|98?)|848)\\d{3,6}|(?:2(?:27|5|7[135789]|8[25])|3[39]|5[1-46]|6[126-8])\\d{4,6}|2(?:(?:0|70)\\d{5,6}|2[05]\\d{7})|(?:4\\d|9[2-8])\\d{4,7}','personal_number' => '','voip' => '86(?:1[12]|30|55|77|8[367]|99)\\d{6}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (26313 => "Victoria\ Falls",26314 => "Rutenga",26315 => "Binga",26316 => "West\ Nicholson",26317 => "Filabusi",26318 => "Dete",26320 => "Mutare",263204 => "Odzi",263205 => "Pengalonga",26321 => "Murambinda",263220 => "Mutare",263222 => "Wedza",263225 => "Rusape",263227 => "Chipinge",263228 => "Hauna",26324 => "Chipangayi",263248 => "Birchenough\ Bridge",26325 => "Rusape",2632582 => "Headlands",2632583 => "Nyazura",26326 => "Chimanimani",263270 => "Chitungwiza",263271 => "Bindura",263272 => "Mutoko",263273 => "Ruwa",263274 => "Arcturus",263275 => "Mazowe",263276 => "Mt\.\ Darwin",263277 => "Mvurwi",263278 => "Murewa",263279 => "Marondera",263280 => "Plumtree",263281 => "Hwange",263282 => "Kezi",263283 => "Figtree",263284 => "Gwanda",263285 => "Turkmine",263286 => "Beitbridge",263287 => "Nyamandhlovu",263288 => "Esigodini",263289 => "Jotsholo",26329 => "Juliasdale",263298 => "Nyanga",26330 => "Gutu",263308 => "Chatsworth",26331 => "Chiredzi",263317 => "Checheche",26332 => "Mvuma",26333 => "Triangle",263337 => "Nyaningwe",263338 => "Nyika",26334 => "Jerera",26335 => "Mashava",26336 => "Ngundu",263371 => "Shamva",263375 => "Concession",263376 => "Glendale",263379 => "Macheke",263383 => "Matopos",263387 => "Tsholotsho",26339 => "Masvingo",263398 => "Lupane",2634 => "Harare",26342729 => "Marondera",26350 => "Shangani",26351 => "Zvishavane",263516 => "Mberengwa",263517 => "Mataga",26352 => "Shurugwi",26353 => "Chegutu",26354 => "Gweru",2635483 => "Lalapanzi",26355 => "Kwekwe",263557 => "Munyati",263558 => "Nkayi",26356 => "Chivhu",26357 => "Centenary",26358 => "Guruve",26359 => "Gokwe",26360 => "Mhangura",26361 => "Kariba",26362 => "Norton",263628 => "Selous",26363 => "Makuti",263637 => "Chirundu",26364 => "Karoi",26365 => "Beatrice",26366 => "Banket",263667 => "Raffingora",263668 => "Mutorashanga",26367 => "Chinhoyi",263675 => "Murombedzi",26368 => "Kadoma",263687 => "Sanyati",263688 => "Chakari",26369 => "Darwendale",263698 => "Trelawney",2639 => "Bulawayo",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"263$prefix"} if exists($map{"263$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+263|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
