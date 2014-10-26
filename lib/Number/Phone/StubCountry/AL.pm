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
package Number::Phone::StubCountry::AL;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(4)(\\d{3})(\\d{4})','leading_digits' => '4[0-6]'},{'pattern' => '(6[6-9])(\\d{3})(\\d{4})','leading_digits' => '6'},{'pattern' => '(\\d{2})(\\d{3})(\\d{3})','leading_digits' => '[2358][2-5]|4[7-9]'},{'pattern' => '(\\d{3})(\\d{3,5})','leading_digits' => '[235][16-9]|8[016-9]|[79]'}];
my $validators = {'personal_number' => '700\\d{5}','toll_free' => '800\\d{4}','pager' => '','mobile' => '6[6-9]\\d{7}','voip' => '','fixed_line' => '(?:2(?:[168][1-9]|[247]\\d|9[1-7])|3(?:1[1-3]|[2-6]\\d|[79][1-8]|8[1-9])|4\\d{2}|5(?:1[1-4]|[2-578]\\d|6[1-5]|9[1-7])|8(?:[19][1-5]|[2-6]\\d|[78][1-7]))\\d{5}','special_rate' => '(808\\d{3})|(900\\d{3})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (355211 => 'Koplik',355212 => 'Puk\�\�',355213 => 'Bajram\ Curri',355214 => 'Krum\�\�',355215 => 'Lezh\�\�',355216 => 'Rr\�\�shen',355217 => 'Burrel',355218 => 'Peshkopi',355219 => 'Bulqiz\�\�',35522 => 'Shkod\�\�r',35524 => 'Kuk\�\�s',355261 => 'Vau\-Dej\�\�s',355271 => 'Fush\�\�\-Arr\�\�z',355284 => 'Rubik',355287 => 'Klos',355311 => 'Ku\�\�ov\�\�',355312 => '\�\�orovod\�\�',355313 => 'Ballsh',35532 => 'Berat',35533 => 'Vlor\�\�',35534 => 'Fier',35535 => 'Lushnje',355361 => 'Ura\ Vajgurore',355368 => 'Poli\�\�an',355371 => 'Divjak\�\�',355381 => 'Patos',355382 => 'Roskovec',355391 => 'Orikum',355392 => 'Selenic\�\�',355393 => 'Himar\�\�',3554 => 'Tirana',35547 => 'Kam\�\�z\/Vor\�\�',355511 => 'Kruje',355512 => 'Peqin',355513 => 'Gramsh',355514 => 'Librazhd',35552 => 'Durr\�\�s',35553 => 'La\�\�',35554 => 'Elbasan',35555 => 'Kavaj\�\�',355561 => 'Mamurras',355563 => 'Fush\�\�\-Kruj\�\�',355571 => 'Shijak',355572 => 'Man\�\�z',355573 => 'Sukth',355577 => 'Rrogozhin\�\�',355581 => 'C\�\�rrik',355582 => 'Belsh',355591 => 'P\�\�rrenjas',355811 => 'Bilisht',355812 => 'Ersek\�\�',355813 => 'P\�\�rmet',355814 => 'Tepelen\�\�',355815 => 'Delvin\�\�',35582 => 'Kor\�\�\�\�',35583 => 'Pogradec',35584 => 'Gjirokast\�\�r',35585 => 'Sarand\�\�',355861 => 'Maliq',355871 => 'Leskovik',355875 => 'K\�\�lcyr\�\�',355881 => 'Libohov\�\�',355885 => 'Memaliaj',355891 => 'Konispol',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"355$prefix"} if exists($map{"355$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+355|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
