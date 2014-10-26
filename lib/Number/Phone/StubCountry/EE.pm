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
package Number::Phone::StubCountry::EE;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121122000027;

my $formatters = [{'pattern' => '([3-79]\\d{2})(\\d{4})','leading_digits' => '[369]|4[3-8]|5(?:[02]|1(?:[0-8]|95)|5[0-478]|6(?:4[0-4]|5[1-589]))|7[1-9]'},{'pattern' => '(70)(\\d{2})(\\d{4})','leading_digits' => '70'},{'pattern' => '(8000)(\\d{3})(\\d{3})','leading_digits' => '8000'},{'pattern' => '([458]\\d{3})(\\d{3,4})','leading_digits' => '40|5|8(?:00[1-9]|[1-5])'}];
my $validators = {'personal_number' => '70[0-2]\\d{5}','toll_free' => '800(?:0\\d{3}|1\\d|[2-9])\\d{3}','pager' => '','mobile' => '(?:5\\d|8[1-5])\\d{6}|5(?:[02]\\d{2}|1(?:[0-8]\\d|95)|5[0-478]\\d|64[0-4]|65[1-589])\\d{3}','voip' => '','fixed_line' => '(?:3[23589]|4(?:0\\d|[3-8])|6\\d|7[1-9]|88)\\d{5}','special_rate' => '()|(900\\d{4})|(1(?:2[01245]|3[0-6]|4[1-489]|5[0-59]|6[1-46-9]|7[0-27-9]|8[189]|9[012])\\d{1,2})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (37232 => "Rakvere",37233 => "Kohtla\-J\�\�rve",37235 => "Narva\/Sillam\�\�e",37238 => "Paide",37243 => "Viljandi",37244 => "P\�\�rnu",37245 => "Kuressaare",37246 => "K\�\�rdla",37247 => "Haapsalu",37248 => "Rapla",3726 => "Tallinn\/Harju\ County",37273 => "Tartu",37274 => "Tartu",37275 => "Tartu",37276 => "Valga",37277 => "J\�\�geva",37278 => "V\�\�ru",37279 => "P\�\�lva",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"372$prefix"} if exists($map{"372$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+372|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
