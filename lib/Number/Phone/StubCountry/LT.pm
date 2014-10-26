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
package Number::Phone::StubCountry::LT;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121129182822;

my $formatters = [{'pattern' => '([34]\\d)(\\d{6})','leading_digits' => '37|4(?:1|5[45]|6[2-4])'},{'pattern' => '([3-6]\\d{2})(\\d{5})','leading_digits' => '3[148]|4(?:[24]|6[09])|528|6'},{'pattern' => '([7-9]\\d{2})(\\d{2})(\\d{3})','leading_digits' => '[7-9]'},{'pattern' => '(5)(2\\d{2})(\\d{4})','leading_digits' => '52[0-79]'}];
my $validators = {'personal_number' => '700\\d{5}','toll_free' => '800\\d{5}','pager' => '','mobile' => '6\\d{7}','voip' => '','fixed_line' => '(?:3[1478]|4[124-6]|52)\\d{6}','special_rate' => '(808\\d{5})|(9(?:0[0239]|10)\\d{5})|(70[67]\\d{5})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (370310 => "Var\�\�na",370313 => "Druskininkai",370315 => "Alytus",370318 => "Lazdijai",370319 => "Bir\�\�tonas\/Prienai",370340 => "Ukmerg\�\�",370342 => "Vilkavi\�\�kis",370343 => "Marijampol\�\�",370345 => "\�\�akiai",370346 => "Kai\�\�iadorys",370347 => "K\�\�dainiai",370349 => "Jonava",37037 => "Kaunas",370380 => "\�\�al\�\�ininkai",370381 => "Anyk\�\�\�\�iai",370382 => "\�\�irvintos",370383 => "Mol\�\�tai",370385 => "Zarasai",370386 => "Ignalina\/Visaginas",370387 => "\�\�ven\�\�ionys",370389 => "Utena",37041 => "\�\�iauliai",370421 => "Pakruojis",370422 => "Radvili\�\�kis",370425 => "Akmen\�\�",370426 => "Joni\�\�kis",370427 => "Kelm\�\�",370428 => "Raseiniai",370440 => "Skuodas",370441 => "\�\�ilut\�\�",370443 => "Ma\�\�eikiai",370444 => "Tel\�\�iai",370445 => "Kretinga",370446 => "Taurag\�\�",370447 => "Jurbarkas",370448 => "Plung\�\�",370449 => "\�\�ilal\�\�",37045 => "Panev\�\�\�\�ys",370450 => "Bir\�\�ai",370451 => "Pasvalys",370458 => "Roki\�\�kis",370459 => "Kupi\�\�kis",37046 => "Klaip\�\�da",370460 => "Palanga",370469 => "Neringa",3705 => "Vilnius",370528 => "Elektr\�\�nai\/Trakai",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"370$prefix"} if exists($map{"370$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+370|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
