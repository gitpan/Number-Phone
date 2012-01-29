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
package Number::Phone::StubCountry::LV;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '80\\d{6}','pager' => '','mobile' => '2\\d{7}','voip' => '','fixed_line' => '6\\d{7}','special_rate' => '()|(90\\d{6})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (371630 => 'Jelgava',371631 => 'Tukums',371632 => 'Talsi',371633 => 'Kuldiga',371634 => 'Liepaja',371635 => 'Ventspils',371636 => 'Ventspils',371637 => 'Dobele',371638 => 'Saldus',371639 => 'Bauska',371640 => 'Limba\Å\¾i',371641 => 'C\Ä\“sis',371642 => 'Valmiera',371643 => 'Al\Å\«ksne',371644 => 'Gulbene',371645 => 'Balvi',371646 => 'R\Ä\“zekne',371647 => 'Valka',371648 => 'Madona',371649 => 'Aizkraukle',371650 => 'Ogre',371651 => 'Aizkraukle',371652 => 'J\Ä\“kabpils',371653 => 'Prei\Ä\¼i',371654 => 'Daugavpils',371655 => 'Ogre',371656 => 'Kr\Ä\slava',371657 => 'Ludza',371658 => 'Daugavpils',371659 => 'C\Ä\“sis',37166 => 'Riga',37167 => 'Riga',371682 => 'Valmiera',371683 => 'J\Ä\“kabpils',371684 => 'Liep\Ä\ja',371686 => 'Jelgava',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"371$prefix"} if exists($map{"371$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+371|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
