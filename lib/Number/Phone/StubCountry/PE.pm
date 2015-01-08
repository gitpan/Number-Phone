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
package Number::Phone::StubCountry::PE;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141124170813;

my $formatters = [{'pattern' => '(1)(\\d{7})','leading_digits' => '1'},{'pattern' => '([4-8]\\d)(\\d{6})','leading_digits' => '[4-7]|8[2-4]'},{'pattern' => '(\\d{3})(\\d{5})','leading_digits' => '80'},{'pattern' => '(9\\d{2})(\\d{3})(\\d{3})','leading_digits' => '9'}];
my $validators = {'toll_free' => '800\\d{5}','mobile' => '9\\d{8}','voip' => '','fixed_line' => '(?:1\\d|4[1-4]|5[1-46]|6[1-7]|7[2-46]|8[2-4])\\d{6}','special_rate' => '(801\\d{5})|(805\\d{5})|()','personal_number' => '80[24]\\d{5}','pager' => '','geographic' => '(?:1\\d|4[1-4]|5[1-46]|6[1-7]|7[2-46]|8[2-4])\\d{6}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (511 => "Lima\/Callao",5141 => "Amazonas",5142 => "San\ Mart\�\�n",5143 => "Ancash",5144 => "La\ Libertad",5151 => "Puno",5152 => "Tacna",5153 => "Moquegua",5154 => "Arequipa",5156 => "Ica",5161 => "Ucayali",5162 => "Hu\�\�nuco",5163 => "Pasco",5164 => "Jun\�\�n",5165 => "Loreto",5166 => "Ayacucho",5167 => "Huancavelica",5172 => "Tumbes",5173 => "Piura",5174 => "Lambayeque",5176 => "Cajamarca",5182 => "Madre\ de\ Dios",5183 => "Apur\�\�mac",5184 => "Cusco",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"51$prefix"} if exists($map{"51$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+51|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
