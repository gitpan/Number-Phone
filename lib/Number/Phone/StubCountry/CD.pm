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
package Number::Phone::StubCountry::CD;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '([89]\\d{2})(\\d{3})(\\d{3})','leading_digits' => '[89]'},{'pattern' => '([1-6]\\d)(\\d{5})','leading_digits' => '[1-6]'}];
my $validators = {'personal_number' => '','toll_free' => '','pager' => '','mobile' => '(?:8[0-2489]|9[7-9])\\d{7}','voip' => '','fixed_line' => '[1-6]\\d{6}','special_rate' => '()|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2431 => 'Kinshasa',2432 => 'Katanga',2433 => 'Bas\-Congo\/Bandundu',2434 => 'Kasai\-Oriental\/Kasai\-Occidental',2435 => 'Oriental\ Province\ \(Kisanga\/Mbandaka\)',2436 => 'North\ Kivu\/South\ Kivu\/Maniema',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"243$prefix"} if exists($map{"243$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+243|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;