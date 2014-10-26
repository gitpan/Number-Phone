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
package Number::Phone::StubCountry::SZ;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20130704221644;

my $formatters = [{'pattern' => '(\\d{4})(\\d{4})','leading_digits' => '[027]'}];
my $validators = {'personal_number' => '','toll_free' => '0800\\d{4}','pager' => '','mobile' => '7[6-8]\\d{6}','voip' => '','fixed_line' => '2(?:2(?:0[07]|[13]7|2[57])|3(?:0[34]|[1278]3|3[23]|[46][34])|(?:40[4-69]|67)|5(?:0[5-7]|1[6-9]|[23][78]|48|5[01]))\\d{4}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2682207 => "Nhlangano\,\ Shiselweni\ district",2682217 => "Hlathikulu\,\ Shiselweni\ district",2682227 => "Hluthi\,\ Shiselweni\ district",2682237 => "Mahamba\,\ Shiselweni\ district",2682303 => "Nsoko\,\ Lubombo\ district",2682312 => "Mhlume\,\ Lubombo\ district",2682313 => "Mhlume\,\ Lubombo\ district",2682322 => "Tshaneni\,\ Lubombo\ district",2682323 => "Tshaneni\,\ Lubombo\ district",2682333 => "Mpaka\,\ Lubombo\ district",2682343 => "Siteki\,\ Lubombo\ district",2682344 => "Siphofaneni\,\ Lubombo\ district",2682363 => "Big\ Bend\,\ Lubombo\ district",2682364 => "Big\ Bend\,\ Lubombo\ district",2682373 => "Maphiveni\,\ Lubombo\ district",2682382 => "Simunye\,\ Lubombo\ district",2682383 => "Simunye\,\ Lubombo\ district",2682404 => "Mbabane\,\ Hhohho\ district",2682405 => "Mbabane\,\ Hhohho\ district",2682406 => "Mbabane\,\ Hhohho\ district",2682416 => "Lobamba\,\ Hhohho\ district",2682422 => "Sidwashini\,\ Hhohho\ district",2682437 => "Pigg\'s\ Peak\,\ Hhohho\ district",2682442 => "Ngwenya\,\ Hhohho\ district",2682452 => "Bhunya\,\ Hhohho\ district",2682453 => "Bhunya\,\ Hhohho\ district",2682467 => "Mhlambanyatsi\,\ Hhohho\ district",2682472 => "Mahwalala\,\ Hhohho\ district",2682482 => "Siphocosini\,\ Hhohho\ district",2682505 => "Manzini",2682506 => "Manzini",2682517 => "Matsapha\,\ Manzini\ district",2682518 => "Matsapha\,\ Manzini\ district",2682528 => "Malkerns\,\ Manzini\ district",2682538 => "Mankayane\,\ Manzini\ district",2682548 => "Ludzeludze\,\ Manzini\ district",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"268$prefix"} if exists($map{"268$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+268|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
