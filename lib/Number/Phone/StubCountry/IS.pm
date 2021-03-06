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
package Number::Phone::StubCountry::IS;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221723;

my $formatters = [{'pattern' => '(\\d{3})(\\d{4})','leading_digits' => '[4-9]'},{'pattern' => '(3\\d{2})(\\d{3})(\\d{3})','leading_digits' => '3'}];
my $validators = {'mobile' => '38[589]\\d{6}|(?:6(?:1[1-8]|3[089]|4[0167]|5[019]|[67][0-69]|9\\d)|7(?:5[057]|7\\d|8[0-36-8])|8(?:2[0-5]|3[0-4]|[469]\\d|5[1-9]))\\d{4}','special_rate' => '()|(90\\d{5})|()','geographic' => '(?:4(?:1[0-24-6]|2[0-7]|[37][0-8]|4[0-245]|5[0-3568]|6\\d|8[0-36-8])|5(?:05|[156]\\d|2[02578]|3[013-7]|4[03-7]|7[0-2578]|8[0-35-9]|9[013-689])|87[23])\\d{4}','pager' => '','toll_free' => '800\\d{4}','fixed_line' => '(?:4(?:1[0-24-6]|2[0-7]|[37][0-8]|4[0-245]|5[0-3568]|6\\d|8[0-36-8])|5(?:05|[156]\\d|2[02578]|3[013-7]|4[03-7]|7[0-2578]|8[0-35-9]|9[013-689])|87[23])\\d{4}','voip' => '49\\d{5}','personal_number' => ''};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (354421 => "Keflav\�\�k",354462 => "Akureyri",354551 => "Reykjav\�\�k\/Vesturb\�\�r\/Mi\�\�b\�\�rinn",354552 => "Reykjav\�\�k\/Vesturb\�\�r\/Mi\�\�b\�\�rinn",354561 => "Reykjav\�\�k\/Vesturb\�\�r\/Mi\�\�b\�\�rinn",354562 => "Reykjav\�\�k\/Vesturb\�\�r\/Mi\�\�b\�\�rinn",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"354$prefix"} if exists($map{"354$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+354|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
