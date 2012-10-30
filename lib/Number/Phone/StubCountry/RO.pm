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
package Number::Phone::StubCountry::RO;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030162647;

my $formatters = [{'pattern' => '([237]\\d)(\\d{3})(\\d{4})','leading_digits' => '[23]1|7'},{'pattern' => '(21)(\\d{4})','leading_digits' => '21'},{'pattern' => '(\\d{3})(\\d{3})(\\d{3})','leading_digits' => '[23][3-7]|[89]'},{'pattern' => '(2\\d{2})(\\d{3})','leading_digits' => '2[3-6]'}];
my $validators = {'personal_number' => '802\\d{6}','toll_free' => '800\\d{6}','pager' => '','mobile' => '7[1-8]\\d{7}','voip' => '','fixed_line' => '2(?:1(?:\\d{7}|9\\d{3})|[3-6](?:\\d{7}|\\d9\\d{2}))|3[13-6]\\d{7}','special_rate' => '(801\\d{6})|(90[036]\\d{6})|(37\\d{7})'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (4021 => 'Bucharest\ and\ Ilfov\ County',40230 => 'Suceava',40231 => 'Boto\È\™ani',40232 => 'Ia\È\™i',40233 => 'Neam\È\›',40234 => 'Bac\Ä\ƒu',40235 => 'Vaslui',40236 => 'Gala\È\›i',40237 => 'Vrancea',40238 => 'Buz\Ä\ƒu',40239 => 'Br\Ä\ƒila',40240 => 'Tulcea',40241 => 'Constan\È\›a',40242 => 'C\Ä\ƒl\Ä\ƒra\È\™i',40243 => 'Ialomi\È\›a',40244 => 'Prahova',40245 => 'D\Ã\¢mbovi\È\›a',40246 => 'Giurgiu',40247 => 'Teleorman',40248 => 'Arge\È\™',40249 => 'Olt',40250 => 'V\Ã\¢lcea',40251 => 'Dolj',40252 => 'Mehedin\È\›i',40253 => 'Gorj',40254 => 'Hunedoara',40255 => 'Cara\È\™\-Severin',40256 => 'Timi\È\™',40257 => 'Arad',40258 => 'Alba',40259 => 'Bihor',40260 => 'S\Ä\ƒlaj',40261 => 'Satu\ Mare',40262 => 'Maramure\È\™',40263 => 'Bistri\È\›a\-N\Ä\ƒs\Ä\ƒud',40264 => 'Cluj',40265 => 'Mure\È\™',40266 => 'Harghita',40267 => 'Covasna',40268 => 'Bra\È\™ov',40269 => 'Sibiu',4031 => 'Bucharest\ and\ Ilfov\ County',40330 => 'Suceava',40331 => 'Boto\È\™ani',40332 => 'Ia\È\™i',40333 => 'Neam\È\›',40334 => 'Bac\Ä\ƒu',40335 => 'Vaslui',40336 => 'Gala\È\›i',40337 => 'Vrancea',40338 => 'Buz\Ä\ƒu',40339 => 'Br\Ä\ƒila',40340 => 'Tulcea',40341 => 'Constan\È\›a',40342 => 'C\Ä\ƒl\Ä\ƒra\È\™i',40343 => 'Ialomi\È\›a',40344 => 'Prahova',40345 => 'D\Ã\¢mbovi\È\›a',40346 => 'Giurgiu',40347 => 'Teleorman',40348 => 'Arge\È\™',40349 => 'Olt',40350 => 'V\Ã\¢lcea',40351 => 'Dolj',40352 => 'Mehedin\È\›i',40353 => 'Gorj',40354 => 'Hunedoara',40355 => 'Cara\È\™\-Severin',40356 => 'Timi\È\™',40357 => 'Arad',40358 => 'Alba',40359 => 'Bihor',40360 => 'S\Ä\ƒlaj',40361 => 'Satu\ Mare',40362 => 'Maramure\È\™',40363 => 'Bistri\È\›a\-N\Ä\ƒs\Ä\ƒud',40364 => 'Cluj',40365 => 'Mure\È\™',40366 => 'Harghita',40367 => 'Covasna',40368 => 'Bra\È\™ov',40369 => 'Sibiu',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"40$prefix"} if exists($map{"40$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+40|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
