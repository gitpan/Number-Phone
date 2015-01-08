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
package Number::Phone::StubCountry::SA;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141125232349;

my $formatters = [{'pattern' => '([1-467])(\\d{3})(\\d{4})','leading_digits' => '[1-467]'},{'leading_digits' => '1[1-467]','pattern' => '(1\\d)(\\d{3})(\\d{4})'},{'pattern' => '(5\\d)(\\d{3})(\\d{4})','leading_digits' => '5'},{'leading_digits' => '92','pattern' => '(92\\d{2})(\\d{5})'},{'pattern' => '(800)(\\d{3})(\\d{4})','leading_digits' => '80'},{'leading_digits' => '81','pattern' => '(811)(\\d{3})(\\d{3,4})'}];
my $validators = {'geographic' => '11\\d{7}|1?(?:2[24-8]|3[35-8]|4[3-68]|6[2-5]|7[235-7])\\d{6}','toll_free' => '800\\d{7}','pager' => '','voip' => '','mobile' => '(?:5(?:[013-689]\\d|7[0-26-8])|811\\d)\\d{6}','personal_number' => '','special_rate' => '(92[05]\\d{6})|()|()','fixed_line' => '11\\d{7}|1?(?:2[24-8]|3[35-8]|4[3-68]|6[2-5]|7[235-7])\\d{6}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (96611 => "Riyadh\/Kharj",96612 => "Makkah\/Jeddah",96613 => "Dammam\/Khobar\/Dahran",96614 => "Madenah\/Arar\/Tabuk\/Yanbu",96616 => "Hail\/Qasim",96617 => "Abha\/Najran\/Jezan",9662 => "Makkah\/Jeddah",9663 => "Dammam\/Khobar\/Dahran",9664 => "Madenah\/Arar\/Tabuk\/Yanbu",9666 => "Hail\/Qasim",9667 => "Abha\/Najran\/Jezan",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"966$prefix"} if exists($map{"966$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+966|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
