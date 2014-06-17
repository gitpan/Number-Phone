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
package Number::Phone::StubCountry::IR;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140617214232;

my $formatters = [{'leading_digits' => '2(?:1|5[0-47-9])','pattern' => '(2[15])(\\d{3,5})'},{'pattern' => '(2[15])(\\d{3})(\\d{3,4})','leading_digits' => '2(?:1|5[0-47-9])'},{'pattern' => '(2\\d)(\\d{4})(\\d{4})','leading_digits' => '2(?:[16]|5[0-47-9])'},{'leading_digits' => '[13-9]|2[02-57-9]','pattern' => '(\\d{3})(\\d{3})(\\d{3,4})'},{'leading_digits' => '[13-9]|2[02-57-9]','pattern' => '(\\d{3})(\\d{2})(\\d{2,3})'},{'pattern' => '(\\d{3})(\\d{3})','leading_digits' => '[13-9]|2[02-57-9]'}];
my $validators = {'toll_free' => '','personal_number' => '','mobile' => '9[1-3]\\d{8}','geographic' => '1(?:[13-589][12]|[27][1-4])\\d{7}|2(?:1\\d{3,8}|3[12]\\d{7}|4(?:1\\d{4,7}|2\\d{7})|5(?:1\\d{3,7}|[2356]\\d{7})|6\\d{8}|7[34]\\d{7}|[89][12]\\d{7})|3(?:1(?:1\\d{4,7}|2\\d{7})|2[1-4]\\d{7}|3(?:[125]\\d{7}|4\\d{6,7})|4(?:1\\d{6,7}[24-9]\\d{7})|5(?:1\\d{4,7}|[23]\\d{7})|[6-9][12]\\d{7})|4(?:[135-9][12]\\d{7}|2[1-467]\\d{7}|4(?:1\\d{4,7}|[2-4]\\d{7}))|5(?:1(?:1\\d{4,7}|2\\d{7})|2[89]\\d{7}|3[1-5]\\d{7}|4(?:1\\d{4,7}|[2-8]\\d{7})|[5-7][12]\\d{7}|8[1245]\\d{7})|6(?:1(?:1\\d{6,7}|2\\d{7})|[347-9][12]\\d{7}|5(?:1\\d{7}|2\\d{6,7})|6[1-6]\\d{7})|7(?:[13589][12]|2[1289]|4[1-4]|6[1-6]|7[1-3])\\d{7}|8(?:[145][12]|3[124578]|6[1256]|7[1245])\\d{7}','special_rate' => '()|()|(9990\\d{0,6})','voip' => '(?:[2-6]0\\d|993)\\d{7}','fixed_line' => '1(?:[13-589][12]|[27][1-4])\\d{7}|2(?:1\\d{3,8}|3[12]\\d{7}|4(?:1\\d{4,7}|2\\d{7})|5(?:1\\d{3,7}|[2356]\\d{7})|6\\d{8}|7[34]\\d{7}|[89][12]\\d{7})|3(?:1(?:1\\d{4,7}|2\\d{7})|2[1-4]\\d{7}|3(?:[125]\\d{7}|4\\d{6,7})|4(?:1\\d{6,7}[24-9]\\d{7})|5(?:1\\d{4,7}|[23]\\d{7})|[6-9][12]\\d{7})|4(?:[135-9][12]\\d{7}|2[1-467]\\d{7}|4(?:1\\d{4,7}|[2-4]\\d{7}))|5(?:1(?:1\\d{4,7}|2\\d{7})|2[89]\\d{7}|3[1-5]\\d{7}|4(?:1\\d{4,7}|[2-8]\\d{7})|[5-7][12]\\d{7}|8[1245]\\d{7})|6(?:1(?:1\\d{6,7}|2\\d{7})|[347-9][12]\\d{7}|5(?:1\\d{7}|2\\d{6,7})|6[1-6]\\d{7})|7(?:[13589][12]|2[1289]|4[1-4]|6[1-6]|7[1-3])\\d{7}|8(?:[145][12]|3[124578]|6[1256]|7[1245])\\d{7}','pager' => '943\\d{7}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (98111 => "Babol",98112 => "Babol\ suburbs",98121 => "Amol",98122 => "Amol\ suburbs",98123 => "Ghaemshahr",98124 => "Ghaemshahr\ suburbs",98131 => "Rasht",98132 => "Rasht\ suburbs",98141 => "Lahijan",98142 => "Lahijan\ suburbs",98151 => "Sari",98152 => "Sari\ suburbs",98171 => "Gorgan",98172 => "Gonbad\ Kavos",98173 => "Gorgan\ suburbs",98174 => "Gonbad\ Kavos\ suburbs",98181 => "Bandar\ Anzali",98182 => "Bandar\ Anzali\ suburbs",98191 => "Chalus",98192 => "Chalus\ suburbs",9821 => "Tehran\ province",98231 => "Semnan",98232 => "Semnan\ suburbs",98241 => "Zanjan",98242 => "Zanjan\ suburbs",9825 => "Qom\ province",98255 => "Saveh",98256 => "Saveh\ suburbs",9826 => "Alborz",98273 => "Shahroud",98274 => "Shahroud\ suburbs",98281 => "Qazvin",98282 => "Qazvin\ suburbs",98311 => "Isfahan",98312 => "Isfahan\ suburbs",98321 => "Shahreza",98322 => "Shahreza\ suburbs",98323 => "Naein",98324 => "Naein\ suburbs",98331 => "Najafabad",98332 => "Najafabad\ suburbs",98334 => "Zarrinshahr",98335 => "Zarrinshahr\ suburbs",98341 => "Kerman",98342 => "Kerman\ suburbs",98344 => "Bam",98345 => "Sirjan",98346 => "Bam\ suburbs",98347 => "Sirjan\ suburbs",98348 => "Jiroft",98349 => "Jiroft\ suburbs",98351 => "Yazd",98352 => "Yazd\ suburbs",98353 => "Yazd\ suburbs",98361 => "Kashan",98362 => "Kashan\ suburbs",98371 => "Khansar",98372 => "Khansar\ suburbs",98381 => "Shahrekord",98382 => "Shahrekord\ suburbs",98391 => "Rafsanjan",98392 => "Rafsanjan\ suburbs",98411 => "Tabriz",98412 => "Tabriz\ suburbs",98421 => "Maragheh",98422 => "Maragheh\ suburbs",98423 => "Miyaneh",98424 => "Miyaneh\ suburbs",98426 => "Ahar",98427 => "Ahar\ suburbs",98431 => "Sarab",98432 => "Sarab\ suburbs",98441 => "Orumieh",98442 => "Mahabad",98443 => "Orumieh\ suburbs",98444 => "Mahabad\ suburbs",98451 => "Ardabil",98452 => "Ardabil\ suburbs",98461 => "Khoy",98462 => "Khoy\ suburbs",98471 => "Shabestar",98472 => "Shabestar\ suburbs",98481 => "Myandoab",98482 => "Myandoab\ suburbs",98491 => "Marand",98492 => "Marand\ suburbs",98511 => "Mashhad",98512 => "Mashhad\ suburbs",98528 => "Torbat\-e\ Jam",98529 => "Torbat\-e\ Jam\ suburbs",98531 => "Torbat\-e\ Heydarieh",98532 => "Torbat\-e\ Heydarieh\ suburbs",98533 => "Gonabad",98534 => "Ferdows",98535 => "Ferdows\ suburbs",98541 => "Zahedan",98542 => "Zabol",98543 => "Zahedan\ suburbs",98544 => "Zabol\ suburbs",98545 => "Chabahar",98546 => "Chabahar\ suburbs",98547 => "Iranshahr",98548 => "Iranshahr\ suburbs",98551 => "Neyshabur",98552 => "Neyshabur\ suburbs",98561 => "Birjand",98562 => "Birjand\ suburbs",98571 => "Sabzevar",98572 => "Sabzevar\ suburbs",98581 => "Quchan",98582 => "Quchan\ suburbs",98584 => "Bojnord",98585 => "Bojnord\ suburbs",98611 => "Ahwaz",98612 => "Ahwaz\ suburbs",98631 => "Abadan",98632 => "Abadan\ suburbs",98641 => "Dezful",98642 => "Dezful\ suburbs",98651 => "Sarbandar",98652 => "Sarbandar\ suburbs",98661 => "Khorramabad",98662 => "Borujerd",98663 => "Khoramabad\ suburbs",98664 => "Aligudarz",98665 => "Borujerd\ suburbs",98666 => "Aligudarz\ suburbs",98671 => "Behbahan",98672 => "Behbahan\ suburbs",98681 => "Masjed\ Soleiman",98682 => "Masjed\ Soleiman\ suburbs",98691 => "Ramhormoz",98692 => "Ramhormoz\ suburbs",98711 => "Shiraz",98712 => "Shiraz\ suburbs",98721 => "Kazeroon",98722 => "Kazeroon\ suburbs",98728 => "Marvdasht",98729 => "Marvdasht\ suburbs",98731 => "Fasa",98732 => "Fasa\ suburbs",98741 => "Yasooj",98742 => "Dogonbadan",98743 => "Yasooj\ suburbs",98744 => "Dogonbadan\ suburbs",98751 => "Abadeh",98752 => "Abadeh\ suburbs",98761 => "Bandar\ Abbas",98762 => "Bandar\ Lengeh",98763 => "Bandar\ Abbas\ suburbs",98764 => "Bandar\ Lengeh\ suburbs",98765 => "Minab",98766 => "Minab\ suburbs",98771 => "Bushehr",98772 => "Bushehr\ suburbs",98773 => "Bushehr\ suburbs",98781 => "Lar",98782 => "Lar\ suburbs",98791 => "Jahrom",98792 => "Jahrom\ suburbs",98811 => "Hamedan",98812 => "Hamedan\ suburbs",98831 => "Kermanshah",98832 => "Kermanshah\ suburbs",98834 => "Sarpole\ Zahab",98835 => "Sarpole\ Zahab\ suburbs",98837 => "Kangavar",98838 => "Kangavar\ suburbs",98841 => "Ilam",98842 => "Ilam\ suburbs",98851 => "Malayer",98852 => "Malayer\ suburbs",98861 => "Arak",98862 => "Arak\ suburbs",98865 => "Khomein",98866 => "Khomein\ suburbs",98871 => "Sanandaj",98872 => "Sanandaj\ suburbs",98874 => "Saqqez",98875 => "Saqqez\ suburbs",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"98$prefix"} if exists($map{"98$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+98|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
