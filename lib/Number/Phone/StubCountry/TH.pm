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
package Number::Phone::StubCountry::TH;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20130704221644;

my $formatters = [{'pattern' => '(2)(\\d{3})(\\d{4})','leading_digits' => '2'},{'pattern' => '([3-9]\\d)(\\d{3})(\\d{3,4})','leading_digits' => '[3-9]'},{'pattern' => '(1[89]00)(\\d{3})(\\d{3})','leading_digits' => '1'}];
my $validators = {'personal_number' => '','toll_free' => '1800\\d{6}','pager' => '','mobile' => '[89]\\d{8}','voip' => '60\\d{7}','fixed_line' => '(?:2[1-9]|3[2-9]|4[2-5]|5[2-6]|7[3-7])\\d{6}','special_rate' => '()|(1900\\d{6})|(1\\d{3})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (662 => "Bangkok\/Nonthaburi\/Pathum\ Thani\/Samut\ Prakan",6632 => "Phetchaburi\/Prachuap\ Khiri\ Khan\/Ratchaburi",6633 => "Chachoengsao\/Chon\ Buri\/Rayong",6634 => "Kanchanaburi\/Nakhon\ Pathom\/Samut\ Sakhon\/Samut\ Songkhram",6635 => "Ang\ Thong\/Phra\ Nakhon\ Si\ Ayutthaya\/Suphan\ Buri",6636 => "Lop\ Buri\/Saraburi\/Sing\ Buri",6637 => "Nakhon\ Nayok\/Prachin\ Buri\/Sa\ Kaeo",6638 => "Chachoengsao\/Chon\ Buri\/Rayong",6639 => "Chanthaburi\/Trat",6642 => "Loei\/Mukdahan\/Nakhon\ Phanom\/Nong\ Khai\/Sakon\ Nakhon\/Udon\ Thani",6643 => "Kalasin\/Khon\ Kaen\/Maha\ Sarakham\/Roi\ Et",6644 => "Buri\ Ram\/Chaiyaphum\/Nakhon\ Ratchasima\/Surin",6645 => "Amnat\ Charoen\/Si\ Sa\ Ket\/Ubon\ Ratchathani\/Yasothon",6652 => "Chiang\ Mai\/Chiang\ Rai\/Lamphun\/Mae\ Hong\ Son",6653 => "Chiang\ Mai\/Chiang\ Rai\/Lamphun\/Mae\ Hong\ Son",6654 => "Lampang\/Nan\/Phayao\/Phrae",6655 => "Kamphaeng\ Phet\/Phitsanulok\/Sukhothai\/Tak\/Uttaradit",6656 => "Chai\ Nat\/Nakhon\ Sawan\/Phetchabun\/Phichit\/Uthai\ Thani",6673 => "Narathiwat\/Pattani\/Yala",6674 => "Phatthalung\/Satun\/Songkhla",6675 => "Krabi\/Nakhon\ Si\ Thammarat\/Trang",6676 => "Phang\ Nga\/Phuket",6677 => "Chumphon\/Ranong\/Surat\ Thani",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"66$prefix"} if exists($map{"66$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+66|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
