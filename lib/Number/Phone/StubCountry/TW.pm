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
package Number::Phone::StubCountry::TW;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121027224531;

my $formatters = [{'pattern' => '([2-8])(\\d{3,4})(\\d{4})','leading_digits' => '[2-7]|8[1-9]'},{'pattern' => '([89]\\d{2})(\\d{3})(\\d{3})','leading_digits' => '80|9'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{6}','pager' => '','mobile' => '9\\d{8}','voip' => '','fixed_line' => '[2-8]\\d{7,8}','special_rate' => '()|(900\\d{6})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (8862 => 'Taipei',8863 => 'Taoyuan\/Hsinchu\/Yilan\/Hualien',88637 => 'Miaoli',8864 => 'Taichung\/Changhua',88649 => 'Nantou',8865 => 'Chiayi\/Yunlin',8866 => 'Tainan\/Penghu',8867 => 'Kaohsiung',8868 => 'Pingtung',88682 => 'Kinmen',886826 => 'Wuqiu',886836 => 'Matsu',88689 => 'Taitung',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"886$prefix"} if exists($map{"886$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+886|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
