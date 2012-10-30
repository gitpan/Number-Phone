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
package Number::Phone::StubCountry::PL;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030162647;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '[124]|3[2-4]|5[24-689]|6[1-3578]|7[14-7]|8[1-79]|9[145]'},{'pattern' => '(\\d{2})(\\d{4,6})','leading_digits' => '[124]|3[2-4]|5[24-689]|6[1-3578]|7[14-7]|8[1-7]'},{'pattern' => '(\\d{3})(\\d{3})(\\d{3})','leading_digits' => '39|5[013]|6[0469]|7[0289]|8[08]'},{'pattern' => '(\\d{3})(\\d{2})(\\d{2,3})','leading_digits' => '64'},{'pattern' => '(\\d{3})(\\d{3})','leading_digits' => '64'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{6}','pager' => '642\\d{3,6}','mobile' => '(?:5[013]|6[069]|7[289]|88)\\d{7}','voip' => '39\\d{7}','fixed_line' => '(?:1[2-8]|2[2-59]|3[2-4]|4[1-468]|5[24-689]|6[1-3578]|7[14-6]|8[1-7])\\d{5,7}|77\\d{4,7}|(?:89|9[145])\\d{7}','special_rate' => '(801\\d{6})|(70\\d{7})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (4812 => 'Krak\Ã\³w',4813 => 'Krosno',4814 => 'Tarn\Ã\³w',4815 => 'Tarnobrzeg',4816 => 'Przemy\Å\›l',4817 => 'Rzesz\Ã\³w',4818 => 'Nowy\ S\Ä\…cz',4822 => 'Warsaw',4823 => 'Ciechan\Ã\³w',4824 => 'Plock',4825 => 'Siedlce',4829 => 'Ostrol\Ä\™ka',4832 => 'Katowice',4833 => 'Bielsko\-Biala',4834 => 'Cz\Ä\™stochowa',4841 => 'Kielce',4842 => 'L\Ã\³d\Å\º',4843 => 'Sieradz',4844 => 'Piotrk\Ã\³w\ Trybunalski',4846 => 'Skierniewice',4848 => 'Radom',4852 => 'Bydgoszcz',4854 => 'Wloclawek',4855 => 'Elbl\Ä\…g',4856 => 'Toru\Å\„',4858 => 'Gda\Å\„sk',4859 => 'Slupsk',4861 => 'Pozna\Å\„',4862 => 'Kalisz',4863 => 'Konin',4865 => 'Leszno',4867 => 'Pila',4868 => 'Zielona\ G\Ã\³ra',4871 => 'Wroclaw',4874 => 'Walbrzych',4875 => 'Jelenia\ G\Ã\³ra',4876 => 'Legnica',4877 => 'Opole',4881 => 'Lublin',4882 => 'Chelm',4883 => 'Biala\ Podlaska',4884 => 'Zamo\Å\›\Ä\‡',4885 => 'Bialystok',4886 => 'Lom\Å\¼a',4887 => 'Suwalki',4889 => 'Olsztyn',4891 => 'Szczecin',4894 => 'Koszalin',4895 => 'Gorz\Ã\³w\ Wielkopolski',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"48$prefix"} if exists($map{"48$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+48|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
