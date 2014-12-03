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
package Number::Phone::StubCountry::BE;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221722;

my $formatters = [{'leading_digits' => '4[6-9]','pattern' => '(4[6-9]\\d)(\\d{2})(\\d{2})(\\d{2})'},{'leading_digits' => '[23]|[49][23]','pattern' => '([2-49])(\\d{3})(\\d{2})(\\d{2})'},{'pattern' => '([15-8]\\d)(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[156]|7[018]|8(?:0[1-9]|[1-79])'},{'leading_digits' => '(?:80|9)0','pattern' => '([89]\\d{2})(\\d{2})(\\d{3})'}];
my $validators = {'special_rate' => '()|((?:70[2-7]|90\\d)\\d{5})|(78\\d{6})','mobile' => '4(?:[679]\\d|8[03-9])\\d{6}','pager' => '','geographic' => '(?:1[0-69]|[49][23]|5\\d|6[013-57-9]|71|8[0-79])[1-9]\\d{5}|[23][2-8]\\d{6}','fixed_line' => '(?:1[0-69]|[49][23]|5\\d|6[013-57-9]|71|8[0-79])[1-9]\\d{5}|[23][2-8]\\d{6}','toll_free' => '800\\d{5}','personal_number' => '','voip' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (3210 => "Wavre",3211 => "Hasselt",3212 => "Tongeren",3213 => "Diest",3214 => "Herentals",3215 => "Mechelen",3216 => "Leuven",3219 => "Waremme",322 => "Brussels",323 => "Antwerp",3242 => "Li\Ã\¨ge",3243 => "Li\Ã\¨ge",3250 => "Bruges",3251 => "Roeselare",3252 => "Dendermonde",3253 => "Aalst",3254 => "Ninove",3255 => "Ronse",3256 => "Kortrijk",3257 => "Ypres",3258 => "Veurne",3259 => "Ostend",3260 => "Chimay",3261 => "Libramont\-Chevigny",3263 => "Arlon",3264 => "La\ Louvi\Ã\¨re",3265 => "Mons",3267 => "Nivelles",3268 => "Ath",3269 => "Tournai",3271 => "Charleroi",3280 => "Stavelot",3281 => "Namur",3282 => "Dinant",3283 => "Ciney",3284 => "Marche\-en\-Famenne",3285 => "Huy",3286 => "Durbuy",3287 => "Verviers",3289 => "Genk",329 => "Ghent",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"32$prefix"} if exists($map{"32$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+32|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
