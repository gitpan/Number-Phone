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
package Number::Phone::StubCountry::VE;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140617214232;

my $formatters = [{'pattern' => '(\\d{3})(\\d{7})'}];
my $validators = {'fixed_line' => '(?:2(?:12|3[457-9]|[58][1-9]|[467]\\d|9[1-6])|50[01])\\d{7}','pager' => '','special_rate' => '()|(900\\d{7})|()','voip' => '','geographic' => '(?:2(?:12|3[457-9]|[58][1-9]|[467]\\d|9[1-6])|50[01])\\d{7}','toll_free' => '800\\d{7}','mobile' => '4(?:1[24-8]|2[46])\\d{7}','personal_number' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (58212 => "Caracas\/Miranda\/Vargas",58234 => "Miranda",58235 => "Anzo\Ã\¡tegui\/Bol\Ã\­var\/Gu\Ã\¡rico",58237 => "Federal\ Dependencies",58238 => "Gu\Ã\¡rico",58239 => "Miranda",58241 => "Carabobo",58242 => "Carabobo",58243 => "Aragua\/Carabobo",58244 => "Aragua",58245 => "Aragua\/Carabobo",58246 => "Aragua\/Gu\Ã\¡rico",58247 => "Apure\/Gu\Ã\¡rico",58248 => "Amazonas",58249 => "Carabobo\/Falc\Ã\³n",58251 => "Lara\/Yaracuy",58252 => "Lara",58253 => "Lara\/Yaracuy",58254 => "Yaracuy",58255 => "Portuguesa",58256 => "Portuguesa",58257 => "Portuguesa",58258 => "Cojedes",58259 => "Falc\Ã\³n",58260 => "Colombia",58261 => "Zulia",58262 => "Zulia",58263 => "Zulia",58264 => "Zulia",58265 => "Zulia",58266 => "Zulia",58267 => "Zulia",58268 => "Falc\Ã\³n",58269 => "Falc\Ã\³n",58270 => "Colombia",58271 => "M\Ã\©rida\/Trujillo\/Zulia",58272 => "Trujillo",58273 => "Barinas\/M\Ã\©rida",58274 => "M\Ã\©rida",58275 => "M\Ã\©rida\/Zulia",58276 => "T\Ã\¡chira",58277 => "T\Ã\¡chira",58278 => "Apure\/Barinas",58281 => "Anzo\Ã\¡tegui",58282 => "Anzo\Ã\¡tegui",58283 => "Anzo\Ã\¡tegui",58285 => "Bol\Ã\­var",58286 => "Bol\Ã\­var",58287 => "Delta\ Amacuro\/Monagas",58288 => "Bol\Ã\­var",58291 => "Monagas",58292 => "Monagas",58293 => "Sucre",58294 => "Sucre",58295 => "Nueva\ Esparta",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"58$prefix"} if exists($map{"58$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+58|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
