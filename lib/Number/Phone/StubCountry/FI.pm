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
package Number::Phone::StubCountry::FI;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140904220736;

my $formatters = [{'leading_digits' => '(?:[1-3]00|[6-8]0)','pattern' => '(\\d{3})(\\d{3,7})'},{'pattern' => '(\\d{2})(\\d{4,10})','leading_digits' => '[14]|2[09]|50|7[135]'},{'leading_digits' => '[25689][1-8]|3','pattern' => '(\\d)(\\d{4,11})'}];
my $validators = {'fixed_line' => '1(?:[3569][1-8]\\d{3,9}|[47]\\d{5,10})|2[1-8]\\d{3,9}|3(?:[1-8]\\d{3,9}|9\\d{4,8})|[5689][1-8]\\d{3,9}','pager' => '','voip' => '','mobile' => '4\\d{5,10}|50\\d{4,8}','special_rate' => '()|([67]00\\d{5,6})|([13]0\\d{4,8}|2(?:0(?:[016-8]\\d{3,7}|[2-59]\\d{2,7})|9\\d{4,8})|60(?:[12]\\d{5,6}|6\\d{7})|7(?:1\\d{7}|3\\d{8}|5[03-9]\\d{2,7}))','toll_free' => '800\\d{4,7}','personal_number' => '','geographic' => '1(?:[3569][1-8]\\d{3,9}|[47]\\d{5,10})|2[1-8]\\d{3,9}|3(?:[1-8]\\d{3,9}|9\\d{4,8})|[5689][1-8]\\d{3,9}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (35813 => "North\ Karelia",35814 => "Central\ Finland",35815 => "Mikkeli",35816 => "Lapland",35817 => "Kuopio",35818 => "\Ã\…land\ Islands",35819 => "Nylandia",3582 => "Turku\/Pori",3583 => "Tavastia",35851 => "Kymi",35852 => "Kymi",35853 => "Kymi",35854 => "Kymi",35855 => "Kymi",35856 => "Kymi",35857 => "Kymi",35858 => "Kymi",3586 => "Vaasa",3588 => "Oulu",3589 => "Helsinki",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"358$prefix"} if exists($map{"358$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+358|\D)//g;
  $number =~ s/(^0)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
