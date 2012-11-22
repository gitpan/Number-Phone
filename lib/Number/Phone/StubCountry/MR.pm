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
package Number::Phone::StubCountry::MR;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121122000027;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '800\\d{5}','pager' => '','mobile' => '(?:2(?:2\\d|70)|3(?:3\\d|6[1-36]|7[1-3])|4(?:4\\d|6[0457-9]|7[4-9]))\\d{5}','voip' => '','fixed_line' => '25[08]\\d{5}|35\\d{6}|45[1-7]\\d{5}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (22245 => "Nouakchott",2224513 => "N\Ã\©ma",2224515 => "Aioun",2224533 => "Ka\Ã\©di",2224534 => "S\Ã\©libaby",2224537 => "Aleg",2224544 => "Zou\Ã\©rat",2224546 => "Atar",2224550 => "Bogh\Ã\©",2224563 => "Kiffa",2224569 => "Rosso\/Tidjikja",2224574 => "Nouadhibou",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"222$prefix"} if exists($map{"222$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+222|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
