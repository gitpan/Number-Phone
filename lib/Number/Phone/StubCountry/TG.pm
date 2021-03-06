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
package Number::Phone::StubCountry::TG;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221723;

my $formatters = [{'pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})'}];
my $validators = {'toll_free' => '','fixed_line' => '2(?:2[2-7]|3[23]|44|55|66|77)\\d{5}','geographic' => '2(?:2[2-7]|3[23]|44|55|66|77)\\d{5}','pager' => '','mobile' => '9[0-389]\\d{6}','special_rate' => '()|()|()','voip' => '','personal_number' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (22822 => "Lome",22823 => "Maritime\ region",22824 => "Plateaux\ region",22825 => "Central\ region",22826 => "Kara\ region",22827 => "Savannah\ region",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"228$prefix"} if exists($map{"228$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+228|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
