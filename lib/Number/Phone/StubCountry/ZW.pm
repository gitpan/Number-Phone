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
our $VERSION = 1.20121122000027;

my $formatters = [{'pattern' => '([49])(\\d{3})(\\d{2,5})','leading_digits' => '4|9[2-9]'},{'pattern' => '([179]\\d)(\\d{3})(\\d{3,4})','leading_digits' => '[19]1|7'},{'pattern' => '(86\\d{2})(\\d{3})(\\d{3})','leading_digits' => '86[24]'},{'pattern' => '([1-356]\\d)(\\d{3,5})','leading_digits' => '1[3-9]|2(?:[1-469]|0[0-35-9]|[45][0-79])|3(?:0[0-79]|1[0-689]|[24-69]|3[0-69])|5(?:[02-46-9]|[15][0-69])|6(?:[0145]|[29][0-79]|3[0-689]|[68][0-69])'},{'pattern' => '([1-356]\\d)(\\d{3})(\\d{3})','leading_digits' => '1[3-9]|2(?:[1-469]|0[0-35-9]|[45][0-79])|3(?:0[0-79]|1[0-689]|[24-69]|3[0-69])|5(?:[02-46-9]|[15][0-69])|6(?:[0145]|[29][0-79]|3[0-689]|[68][0-69])'},{'pattern' => '([2356]\\d{2})(\\d{3,5})','leading_digits' => '2(?:[278]|0[45]|48)|3(?:08|17|3[78]|[78])|5[15][78]|6(?:[29]8|37|[68][78])'},{'pattern' => '([2356]\\d{2})(\\d{3})(\\d{3})','leading_digits' => '2(?:[278]|0[45]|48)|3(?:08|17|3[78]|[78])|5[15][78]|6(?:[29]8|37|[68][78])'},{'pattern' => '([25]\\d{3})(\\d{3,5})','leading_digits' => '258[23]|5483'},{'pattern' => '([25]\\d{3})(\\d{3})(\\d{3})','leading_digits' => '258[23]|5483'},{'pattern' => '(8\\d{3})(\\d{6})','leading_digits' => '86[1389]'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '7[137]\\d{7}|86(?:22|44)\\d{6}','voip' => '86(?:1[12]|30|8[367]|99)\\d{6}','fixed_line' => '(?:1[3-9]|2(?:0[45]|[16]|2[28]|[49]8?|58[23]|7[246]|8[1346-9])|3(?:08?|17?|3[78]|[2456]|7[1569]|8[379])|5(?:[07-9]|1[78]|483|5(?:7?|8))|6(?:0|28|37?|[45][68][78]|98?)|848)\\d{3,6}|(?:2(?:27|5|7[135789]|8[25])|3[39]|5[1-46]|6[126-8])\\d{4,6}|2(?:0|70)\\d{5,6}|(?:4\\d|9[2-8])\\d{4,7}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (26313 => "Victoria\ Falls",26314 => "Rutenga",26315 => "Binga",26316 => "West\ Nicholson",26317 => "Filabusi",26318 => "Dete",26320 => "Mutare",26321 => "Murambinda",26322 => "Wedza",26324 => "Chipangayi",26325 => "Rusape",26326 => "Chimanimani",26327 => "Chipinge",26328 => "Hauna",26329 => "Juliasdale",26330 => "Gutu",26331 => "Chiredzi",26332 => "Mvuma",26333 => "Triangle",26334 => "Jerera",26335 => "Mashava",26336 => "Ngundu",26338 => "Nyika",26339 => "Masvingo\ \(Ft\.\ Victoria\)",2634 => "Harare",26350 => "Shangani",26351 => "Zvishavane",26352 => "Shurugwi",26353 => "Chegutu",26354 => "Gweru",26355 => "Kwekwe",26356 => "Chivhu",26357 => "Centenary",26358 => "Guruve",26359 => "Gokwe",26360 => "Mhangura",26361 => "Kariba",26362 => "Norton",26363 => "Makuti",26364 => "Karoi",26365 => "Beatrice",26366 => "Banket",26367 => "Chinhoyi",26368 => "Kadoma",26369 => "Darwendale",26370 => "Chitungwiza",26371 => "Bindura",26372 => "Mutoku",26373 => "Ruwa",26374 => "Arcturus",26375 => "Mazowe",26376 => "Mount\ Darwin",26377 => "Mvurwi",26378 => "Murewa",26379 => "Marondera",26380 => "Plumtree",26381 => "Hwange",26382 => "Kezi",26383 => "Figtree",26384 => "Gwanda",26385 => "Turk\ Mine",26386 => "Beitbridge",26387 => "Nyamandhlovu",26388 => "Esigodini",26389 => "Jotsholo",2639 => "Bulawayo",);
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
