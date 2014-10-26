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
package Number::Phone::StubCountry::SJ;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140425182230;

my $formatters = [];
my $validators = {'geographic' => '79\\d{6}','mobile' => '(?:4[015-8]|5[89]|9\\d)\\d{6}','toll_free' => '80[01]\\d{5}','personal_number' => '880\\d{5}','special_rate' => '(810(?:0[0-6]|[2-8]\\d)\\d{3})|(82[09]\\d{5})|(0\\d{4}|81(?:0(?:0[7-9]|1\\d)|5\\d{2})\\d{3})','fixed_line' => '79\\d{6}','pager' => '','voip' => '85[0-5]\\d{5}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (472 => "Oslo",4731 => "Buskerud",4732 => "Buskerud",4733 => "Vestfold",4734 => "Vestfold",4735 => "Telemark",4737 => "Aust\-Agder",4738 => "Vest\-Agder",4751 => "Rogaland",4752 => "Rogaland",4753 => "Hordaland",4755 => "Hordaland",4756 => "Hordaland",4757 => "Sogn\ og\ Fjordane",4760 => "Oppland",4761 => "Oppland",4762 => "Hedmark",4763 => "Akershus",4764 => "Akershus",4766 => "Akershus",4767 => "Akershus",4769 => "\�\�stfold",4770 => "M\�\�re\ og\ Romsdal",4771 => "M\�\�re\ og\ Romsdal",4772 => "S\�\�r\-Tr\�\�ndelag",4773 => "S\�\�r\-Tr\�\�ndelag",4774 => "Nord\-Tr\�\�ndelag",4775 => "Nordland",4776 => "Nordland",4777 => "Troms",4778 => "Finnmark",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"47$prefix"} if exists($map{"47$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+47|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
