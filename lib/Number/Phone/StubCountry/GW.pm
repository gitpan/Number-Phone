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
package Number::Phone::StubCountry::GW;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '[5-7]\\d{6}','voip' => '','fixed_line' => '3(?:2[0125]|3[1245]|4[12]|5[1-4]|70|9[1-467])\\d{4}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (24522 => 'S\.\ Luzia',24525 => 'Br\Ã\¡',24531 => 'Mansoa\/Manssab\Ã\¡',24532 => 'Bigene\/Bissor\Ã\£',24533 => 'Bula\/Ingore',24535 => 'Farim',24541 => 'Bafat\Ã\¡\/Bambadinca',24551 => 'Gab\Ã\º',24552 => 'Sonaco',24553 => 'Pirada',24561 => 'Bedanda\/Buba\/Cacine\/Catio\/Fulacunda\/Tite',24562 => 'Quebo',24581 => 'Bolama',24582 => 'Bubaque',24583 => 'Caravela',24584 => 'Uno',24591 => 'Canchungo',24592 => 'Cacheu',24593 => 'S\.\ Domingos',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"245$prefix"} if exists($map{"245$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+245|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
