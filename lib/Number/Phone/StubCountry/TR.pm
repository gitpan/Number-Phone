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
package Number::Phone::StubCountry::TR;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '(\\d{3})(\\d{3})(\\d{4})','leading_digits' => '[23]|4(?:[0-35-9]|4[0-35-9])'},{'pattern' => '(\\d{3})(\\d{3})(\\d{4})','leading_digits' => '[589]'},{'pattern' => '(444)(\\d{1})(\\d{3})','leading_digits' => '444'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{7}','pager' => '512\\d{7}','mobile' => '5(?:0[1-35-7]|22|3\\d|4[1-79]|5[1-5]|9[246])\\d{7}','voip' => '','fixed_line' => '(?:2(?:[13][26]|[28][2468]|[45][268]|[67][246])|3(?:[13][28]|[24-6][2468]|[78][02468]|92)|4(?:[16][246]|[23578][2468]|4[26]))\\d{7}','special_rate' => '()|(900\\d{7})|(444\\d{4}|850\\d{7})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (90212 => 'Istanbul\ \(Europe\)',90213 => 'Istanbul\ \(Europe\)',90216 => 'Istanbul\ \(Anatolia\)',90217 => 'Istanbul\ \(Anatolia\)',90222 => 'Esksehir',90223 => 'Esksehir',90224 => 'Bursa',90225 => 'Bursa',90226 => 'Yalova',90227 => 'Yalova',90228 => 'Bilecik',90229 => 'Bilecik',90232 => 'Izmir',90233 => 'Izmir',90236 => 'Manisa',90237 => 'Manisa',90242 => 'Antalya',90243 => 'Antalya',90246 => 'Isparta',90247 => 'Isparta',90248 => 'Burdur',90249 => 'Burdur',90252 => 'Mugla',90253 => 'Mugla',90256 => 'Aydin',90257 => 'Aydin',90258 => 'Denizli',90259 => 'Denizli',90262 => 'Kocaeli',90263 => 'Kocaeli',90264 => 'Sakarya',90265 => 'Sakarya',90266 => 'Balikesir',90267 => 'Balikesir',90272 => 'Afyon',90273 => 'Afyon',90274 => 'Kutahya',90275 => 'Kutahya',90276 => 'Usak',90277 => 'Usak',90282 => 'Tekirdag',90283 => 'Tekirdag',90284 => 'Edirne',90285 => 'Edirne',90286 => 'Canakkale',90287 => 'Canakkale',90288 => 'Kirklareli',90289 => 'Kirklareli',90312 => 'Ankara',90313 => 'Ankara',90318 => 'Kirikkale',90319 => 'Kirikkale',90322 => 'Adana',90323 => 'Adana',90324 => 'Icel',90325 => 'Icel',90326 => 'Hatay',90327 => 'Hatay',90328 => 'Osmaniye',90329 => 'Osmaniye',90332 => 'Konya',90333 => 'Konya',90338 => 'Karaman',90339 => 'Karaman',90342 => 'Gaziantep',90343 => 'Gaziantep',90344 => 'K\.\ Maras',90345 => 'K\.\ Maras',90346 => 'Sivas',90347 => 'Sivas',90348 => 'Kilis',90349 => 'Kilis',90352 => 'Kayseri',90353 => 'Kayseri',90354 => 'Yozgat',90355 => 'Yozgat',90356 => 'Tokat',90357 => 'Tokat',90358 => 'Amasya',90359 => 'Amasya',90362 => 'Samsun',90363 => 'Samsun',90364 => 'Corum',90365 => 'Corum',90366 => 'Kastamonu',90367 => 'Kastamonu',90368 => 'Sinop',90369 => 'Sinop',90370 => 'Karabuk',90371 => 'Karabuk',90372 => 'Zongdulak',90373 => 'Zongdulak',90374 => 'Bolu',90375 => 'Bolu',90376 => 'Cankiri',90377 => 'Cankiri',90378 => 'Bartin',90379 => 'Bartin',90380 => 'Duzce',90381 => 'Duzce',90382 => 'Aksaray',90383 => 'Aksaray',90384 => 'Nevsehir',90385 => 'Nevsehir',90386 => 'Kirsehir',90387 => 'Kirsehir',90388 => 'Nigde',90389 => 'Nigde',90412 => 'Diyarbakir',90413 => 'Diyarbakir',90414 => 'Sanliurfa',90415 => 'Sanliurfa',90416 => 'Adiyaman',90417 => 'Adiyaman',90422 => 'Malatya',90423 => 'Malatya',90424 => 'Elazig',90425 => 'Elazig',90426 => 'Bingol',90427 => 'Bingol',90428 => 'Tuniceli',90429 => 'Tuniceli',90432 => 'Van',90433 => 'Van',90434 => 'Bitlis',90435 => 'Bitlis',90436 => 'Mus',90437 => 'Mus',90438 => 'Hakkari',90439 => 'Hakkari',90442 => 'Erzurum',90443 => 'Erzurum',90446 => 'Erzincan',90447 => 'Erzincan',90452 => 'Ordu',90453 => 'Ordu',90454 => 'Giresun',90455 => 'Giresun',90456 => 'Gumushane',90457 => 'Gumushane',90458 => 'Bayburt',90459 => 'Bayburt',90462 => 'Trabzon',90463 => 'Trabzon',90464 => 'Rize',90465 => 'Rize',90466 => 'Artvin',90467 => 'Artvin',90472 => 'Agri',90473 => 'Agri',90474 => 'Kars',90475 => 'Kars',90476 => 'Igdir',90477 => 'Igdir',90478 => 'Ardahan',90479 => 'Ardahan',90482 => 'Mardin',90483 => 'Mardin',90484 => 'Stirt',90485 => 'Stirt',90486 => 'Sirnak',90487 => 'Sirnak',90488 => 'Batman',90489 => 'Batman',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"90$prefix"} if exists($map{"90$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+90|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;