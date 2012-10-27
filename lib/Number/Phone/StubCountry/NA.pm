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
package Number::Phone::StubCountry::NA;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121027224531;

my $formatters = [{'pattern' => '(8\\d)(\\d{3})(\\d{4})','leading_digits' => '8[1235]'},{'pattern' => '(6\\d)(\\d{2,3})(\\d{4})','leading_digits' => '6'},{'pattern' => '(88)(\\d{3})(\\d{3})','leading_digits' => '88'},{'pattern' => '(870)(\\d{3})(\\d{3})','leading_digits' => '870'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '(?:60|8[125])\\d{7}','voip' => '8(3\\d{2}|86)\\d{5}','fixed_line' => '6(?:1(?:17|2(?:[0189]\\d|[2-6]|7\\d?)|3(?:2\\d|3[378])|4[01]|69|7[014])|2(?:17|25|5(?:[0-36-8]|4\\d?)|69|70)|3(?:17|2(?:[0237]\\d?|[14-689])|34|6[29]|7[01]|81)|4(?:17|2(?:[012]|7?)|4(?:[06]|1\\d)|5(?:[01357]|[25]\\d?)|69|7[01])|5(?:17|2(?:[0459]|[23678]\\d?)|69|7[01])|6(?:17|2(?:5|6\\d?)|38|42|69|7[01])|7(?:17|2(?:[569]|[234]\\d?)|3(?:0\\d?|[13])|69|7[01]))\\d{4}','special_rate' => '()|(8701\\d{5})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (26461 => 'Windhoek',264621 => 'Okahandja',264626 => 'Windhoek\ International\ Airport',264627 => 'Rehoboth',264629 => 'Uis',264631 => 'Keetmanshoop',2646331 => 'L\Ã\¼deritz',2646332 => 'Oranjemund',2646342 => 'Karasburg',26464 => 'Swakopmund\,\ Walvis\ Bay',264651 => 'Otjiwarongo',2646542 => 'Outjo',264661 => 'Mariental',264671 => 'Tsumeb',264672 => 'Kombat',2646731 => 'Grootfontein',2646752 => 'Oshakati',2646762 => 'Ondangwa',264681 => 'Gobabis',264683 => 'Witvlei',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"264$prefix"} if exists($map{"264$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+264|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
