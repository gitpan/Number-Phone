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
package Number::Phone::StubCountry::HU;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220737;

my $formatters = [{'pattern' => '(1)(\\d{3})(\\d{4})','leading_digits' => '1'},{'pattern' => '(\\d{2})(\\d{3})(\\d{3,4})','leading_digits' => '[2-9]'}];
my $validators = {'fixed_line' => '(?:1\\d|2(?:1\\d|[2-9])|3[2-7]|4[24-9]|5[2-79]|6[23689]|7(?:1\\d|[2-9])|8[2-57-9]|9[2-69])\\d{6}','pager' => '','voip' => '','mobile' => '(?:[27]0|3[01])\\d{7}','special_rate' => '(40\\d{6})|(9[01]\\d{6})|()','personal_number' => '','toll_free' => '80\\d{6}','geographic' => '(?:1\\d|2(?:1\\d|[2-9])|3[2-7]|4[24-9]|5[2-79]|6[23689]|7(?:1\\d|[2-9])|8[2-57-9]|9[2-69])\\d{6}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (361 => "Budapest",3622 => "Sz\�\�kesfeh\�\�rv\�\�r",3623 => "Biatorb\�\�gy",3624 => "Szigetszentmikl\�\�s",3625 => "Dunaujvaros",3626 => "Szentendre",3627 => "Vac",3628 => "Godollo",3629 => "Monor",3632 => "Salgotarjan",3633 => "Esztergom",3634 => "Tatabanya",3635 => "Balassagyarmat",3636 => "Eger",3637 => "Gyongyos",3642 => "Nyiregyhaza",3644 => "M\�\�t\�\�szalka",3645 => "Kisvarda",3646 => "Miskolc",3647 => "Szerencs",3648 => "Ozd",3649 => "Mezokovesd",3652 => "Debrecen",3653 => "Cegled",3654 => "Berettyoujfalu",3656 => "Szolnok",3657 => "Jaszbereny",3659 => "Karcag",3662 => "Szeged",3663 => "Szentes",3666 => "Bekescsaba",3668 => "Oroshaza",3669 => "Mohacs",3672 => "Pecs",3673 => "Szigetvar",3674 => "Szekszard",3675 => "Paks",3676 => "Kecskemet",3677 => "Kiskunhalas",3678 => "Kiskoros",3679 => "Baja",3682 => "Kaposvar",3683 => "Keszthely",3684 => "Siofok",3685 => "Marcali",3687 => "Tapolca",3688 => "Veszprem",3689 => "Papa",3692 => "Zalaegerszeg",3693 => "Nagykanizsa",3694 => "Szombathely",3695 => "Sarvar",3696 => "Gyor",3699 => "Sopron",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"36$prefix"} if exists($map{"36$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+36|\D)//g;
  $number =~ s/(^06)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
