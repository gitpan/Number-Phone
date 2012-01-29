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
package Number::Phone::StubCountry::SK;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '(2)(\\d{3})(\\d{3})(\\d{2})','leading_digits' => '2'},{'pattern' => '([3-5]\\d)(\\d{3})(\\d{2})(\\d{2})','leading_digits' => '[3-5]'},{'pattern' => '([689]\\d{2})(\\d{3})(\\d{3})','leading_digits' => '[689]'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{6}','pager' => '','mobile' => '9(?:0[1-8]|1[0-24-9]|4[0489])\\d{6}','voip' => '6(?:5[0-4]|9[0-6])\\d{6}','fixed_line' => '[2-5]\\d{8}','special_rate' => '(8[5-9]\\d{7})|(9(?:[78]\\d{7}|00\\d{6}))|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (4212 => 'Bratislava',42131 => 'Dunajsk\Ã\¡\ Streda',42132 => 'Tren\Ä\\Ã\­n',42133 => 'Trnava',42134 => 'Senica',42135 => 'Nov\Ã\©\ Z\Ã\¡mky',42136 => 'Levice',42137 => 'Nitra',42138 => 'Topo\Ä\¾\Ä\any',42141 => '\Å\½ilina',42142 => 'Pova\Å\¾sk\Ã\¡\ Bystrica',42143 => 'Martin',42144 => 'Liptovsk\Ã\½\ Mikul\Ã\¡\Å\¡',42145 => 'Zvolen',42146 => 'Prievidza',42147 => 'Lu\Ä\enec',42148 => 'Bansk\Ã\¡\ Bystrica',42151 => 'Pre\Å\¡ov',42152 => 'Poprad',42153 => 'Spi\Å\¡sk\Ã\¡\ Nov\Ã\¡\ Ves',42154 => 'Bardejov',42155 => 'Ko\Å\¡ice',42156 => 'Michalovce',42157 => 'Humenn\Ã\©',42158 => 'Ro\Å\¾\Å\ˆava',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"421$prefix"} if exists($map{"421$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+421|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
