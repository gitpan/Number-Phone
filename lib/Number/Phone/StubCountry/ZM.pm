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
package Number::Phone::StubCountry::ZM;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140822223716;

my $formatters = [{'pattern' => '([29]\\d)(\\d{7})','leading_digits' => '[29]'},{'pattern' => '(800)(\\d{3})(\\d{3})','leading_digits' => '8'}];
my $validators = {'special_rate' => '()|()|()','pager' => '','voip' => '','personal_number' => '','geographic' => '21[1-8]\\d{6}','fixed_line' => '21[1-8]\\d{6}','mobile' => '9(?:5[05]|6\\d|7[1-9])\\d{6}','toll_free' => '800\\d{6}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (260211 => "Lusaka\ Province",260212 => "Ndola\/Copperbelt\ and\ Luapula\ Provinces",260213 => "Livingstone\/Southern\ Province",260214 => "Kasama\/Northern\ Province",260215 => "Kabwe\/Central\ Province",260216 => "Chipata\/Eastern\ Province",260217 => "Solwezi\/Western\ Province",260218 => "Mongu\/North\-Western\ Province",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"260$prefix"} if exists($map{"260$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+260|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
