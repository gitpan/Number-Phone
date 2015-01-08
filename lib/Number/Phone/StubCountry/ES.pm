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
package Number::Phone::StubCountry::ES;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141125232349;

my $formatters = [{'pattern' => '([5-9]\\d{2})(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[568]|[79][0-8]'}];
my $validators = {'voip' => '','personal_number' => '70\\d{7}','mobile' => '(?:6\\d{6}|7[1-4]\\d{5}|9(?:6906(?:09|10)|7390\\d{2}))\\d{2}','special_rate' => '(90[12]\\d{6})|(80[367]\\d{6})|(51\\d{7})','fixed_line' => '8(?:[13]0|[28][0-8]|[47][1-9]|5[01346-9]|6[0457-9])\\d{6}|9(?:[1238][0-8]\\d{6}|4[1-9]\\d{6}|5\\d{7}|6(?:[0-8]\\d{6}|9(?:0(?:[0-57-9]\\d{4}|6(?:0[0-8]|1[1-9]|[2-9]\\d)\\d{2})|[1-9]\\d{5}))|7(?:[124-9]\\d{2}|3(?:[0-8]\\d|9[1-9]))\\d{4})','toll_free' => '[89]00\\d{6}','pager' => '','geographic' => '8(?:[13]0|[28][0-8]|[47][1-9]|5[01346-9]|6[0457-9])\\d{6}|9(?:[1238][0-8]\\d{6}|4[1-9]\\d{6}|5\\d{7}|6(?:[0-8]\\d{6}|9(?:0(?:[0-57-9]\\d{4}|6(?:0[0-8]|1[1-9]|[2-9]\\d)\\d{2})|[1-9]\\d{5}))|7(?:[124-9]\\d{2}|3(?:[0-8]\\d|9[1-9]))\\d{4})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (34810 => "Madrid",34820 => "\�\�vila",34821 => "Segovia",34822 => "Tenerife",34823 => "Salamanca",34824 => "Badajoz",34825 => "Toledo",34826 => "Ciudad\ Real",34827 => "C\�\�ceres",34828 => "Las\ Palmas",34830 => "Barcelona",34841 => "La\ Rioja",34842 => "Cantabria",34843 => "Guip\�\�zcoa",34845 => "Araba",34847 => "Burgos",34848 => "Navarre",34849 => "Guadalajara",34850 => "Almer\�\�a",34851 => "M\�\�laga",34853 => "Ja\�\�n",34854 => "Seville",34856 => "C\�\�diz",34857 => "Cordova",34858 => "Granada",34859 => "Huelva",34860 => "Valencia",34864 => "Castell\�\�n",34865 => "Alicante",34867 => "Albacete",34868 => "Murcia",34869 => "Cuenca",34871 => "Balearic\ Islands",34872 => "Gerona",34873 => "Lleida",34874 => "Huesca",34875 => "Soria",34876 => "Zaragoza",34877 => "Tarragona",34878 => "Teruel",34879 => "Palencia",34880 => "Zamora",34881 => "La\ Coru\�\�a",34882 => "Lugo",34883 => "Valladolid",34884 => "Asturias",34886 => "Pontevedra",34887 => "Le\�\�n",34888 => "Ourense",3491 => "Madrid",34920 => "\�\�vila",34921 => "Segovia",34922 => "Tenerife",34923 => "Salamanca",34924 => "Badajoz",34925 => "Toledo",34926 => "Ciudad\ Real",34927 => "C\�\�ceres",34928 => "Las\ Palmas",3493 => "Barcelona",34941 => "La\ Rioja",34942 => "Cantabria",34943 => "Guip\�\�zcoa",34944 => "Vizcaya",34945 => "Araba",34946 => "Vizcaya",34947 => "Burgos",34948 => "Navarre",34949 => "Guadalajara",34950 => "Almer\�\�a",34951 => "M\�\�laga",34952 => "M\�\�laga",34953 => "Ja\�\�n",34954 => "Seville",34955 => "Seville",34956 => "C\�\�diz",34957 => "Cordova",34958 => "Granada",34959 => "Huelva",34960 => "Valencia",34961 => "Valencia",34962 => "Valencia",34963 => "Valencia",34964 => "Castell\�\�n",34965 => "Alicante",34966 => "Alicante",34967 => "Albacete",34968 => "Murcia",34969 => "Cuenca",34971 => "Balearic\ Islands",34972 => "Gerona",34973 => "Lleida",34974 => "Huesca",34975 => "Soria",34976 => "Zaragoza",34977 => "Tarragona",34978 => "Teruel",34979 => "Palencia",34980 => "Zamora",34981 => "Coru\�\�a",34982 => "Lugo",34983 => "Valladolid",34984 => "Asturias",34985 => "Asturias",34986 => "Pontevedra",34987 => "Le\�\�n",34988 => "Ourense",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"34$prefix"} if exists($map{"34$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+34|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
