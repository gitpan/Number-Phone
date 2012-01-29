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
package Number::Phone::StubCountry::KE;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(\\d{2})(\\d{4,7})','leading_digits' => '[24-6]'},{'pattern' => '(\\d{3})(\\d{6,7})','leading_digits' => '7'},{'pattern' => '(\\d{3})(\\d{3})(\\d{3,4})','leading_digits' => '[89]'}];
my $validators = {'personal_number' => '','toll_free' => '800[245-8]\\d{5,6}','pager' => '','mobile' => '7(?:0[0-5]|[123]\\d|5[0-4]|7[0-5]|8[6-9])\\d{6}','voip' => '','fixed_line' => '(?:20|4[0-6]|5\\d|6[0-24-9])\\d{4,7}','special_rate' => '()|(9(?:00[2-578]|11\\d)\\d{5})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (25411 => 'Mombasa',25420 => 'Nairobi\/Kwale',25441 => 'Mombasa',25442 => 'Malindi',25443 => 'Voi',25444 => 'Machakos',25445 => 'Kajiado',25446 => 'Garissa\/Wajir',25450 => 'Naivasha',25451 => 'Nakuru',25452 => 'Kericho',25453 => 'Eldoret',25454 => 'Kitale',25455 => 'Bungoma',25456 => 'Kakamega',25457 => 'Kisumu',25458 => 'Kisii',25459 => 'Homa\ Bay',25460 => 'Murang\'a',25461 => 'Nyeri',25462 => 'Nanyuki',25464 => 'Meru',25465 => 'Nyahururu',25466 => 'Karuri',25467 => 'Thika',25468 => 'Embu',25469 => 'Marsabit',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"254$prefix"} if exists($map{"254$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+254|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;