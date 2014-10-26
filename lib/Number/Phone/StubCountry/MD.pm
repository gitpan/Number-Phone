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
package Number::Phone::StubCountry::MD;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121027224531;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})(\\d{3})','leading_digits' => '22|3'},{'pattern' => '([25-7]\\d{2})(\\d{2})(\\d{3})','leading_digits' => '2[13-79]|[5-7]'},{'pattern' => '([89]\\d{2})(\\d{5})','leading_digits' => '[89]'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{5}','pager' => '','mobile' => '(?:562|6(?:50|7[1-5]|[089]\\d)|7(?:7[47-9]|[89]\\d))\\d{5}','voip' => '3[08]\\d{6}','fixed_line' => '(?:2(?:1[0569]|2\\d|3[015-7]|4[1-46-9]|5[0-24689]|6[2-589]|7[1-37]|9[1347-9])|5(?:33|5[257]))\\d{5}','special_rate' => '(808\\d{5})|(90[056]\\d{5})|(8(?:03|14)\\d{5})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (373210 => 'Grigoriopol',373215 => 'Dubasari',373216 => 'Camenca',373219 => 'Dnestrovsk',37322 => 'Chisinau',373230 => 'Soroca',373231 => 'Bal\�\�i',373235 => 'Orhei',373236 => 'Ungheni',373237 => 'Straseni',373241 => 'Cimislia',373242 => 'Stefan\ Voda',373243 => 'Causeni',373244 => 'Calarasi',373246 => 'Edine\�\�',373247 => 'Briceni',373248 => 'Criuleni',373249 => 'Glodeni',373250 => 'Floresti',373251 => 'Donduseni',373252 => 'Drochia',373254 => 'Rezina',373256 => 'Riscani',373258 => 'Telenesti',373259 => 'Falesti',373262 => 'Singerei',373263 => 'Leova',373264 => 'Nisporeni',373265 => 'Anenii\ Noi',373268 => 'Ialoveni',373269 => 'Hincesti',373271 => 'Ocni\�\�a',373272 => 'Soldanesti',373273 => 'Cantemir',373291 => 'Ceadir\ Lunga',373293 => 'Vulcanesti',373294 => 'Taraclia',373297 => 'Basarabeasca',373298 => 'Comrat',373299 => 'Cahul',373533 => 'Tiraspol',373552 => 'Bender',373555 => 'Ribnita',373557 => 'Slobozia',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"373$prefix"} if exists($map{"373$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+373|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
