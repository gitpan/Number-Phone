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
package Number::Phone::StubCountry::IR;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141125232349;

my $formatters = [{'pattern' => '(21)(\\d{3,5})','leading_digits' => '21'},{'pattern' => '(\\d{2})(\\d{4})(\\d{4})','leading_digits' => '[1-8]'},{'pattern' => '(\\d{3})(\\d{3})(\\d{3,4})','leading_digits' => '9'},{'pattern' => '(\\d{3})(\\d{2})(\\d{2,3})','leading_digits' => '9'},{'leading_digits' => '9','pattern' => '(\\d{3})(\\d{3})'}];
my $validators = {'personal_number' => '','special_rate' => '()|()|(9990\\d{0,6})','mobile' => '9(?:0[12]|[1-3]\\d)\\d{7}','fixed_line' => '(?:1[137]|2[13-68]|3[1458]|4[145]|5[146-8]|6[146]|7[1467]|8[13467])\\d{8}','voip' => '(?:[2-6]0\\d|993)\\d{7}','geographic' => '(?:1[137]|2[13-68]|3[1458]|4[145]|5[146-8]|6[146]|7[1467]|8[13467])\\d{8}','toll_free' => '','pager' => '943\\d{7}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (9811 => "Mazandaran",9813 => "Gilan",9817 => "Golestan",9821 => "Tehran\ province",9823 => "Semnan\ province",9824 => "Zanjan\ province",9825 => "Qom\ province",9826 => "Alborz",9828 => "Qazvin\ province",9831 => "Isfahan\ province",9834 => "Kerman\ province",9835 => "Yazd\ province",9838 => "Chahar\-mahal\ and\ Bakhtiari",9841 => "East\ Azarbaijan",9844 => "West\ Azarbaijan",9845 => "Ardabil\ province",9851 => "Razavi\ Khorasan",9854 => "Sistan\ and\ Baluchestan",9856 => "South\ Khorasan",9857 => "North\ Khorasan",9858 => "North\ Khorasan",9861 => "Khuzestan",9864 => "North\ Khorasan",9866 => "Lorestan",9871 => "Fars",9874 => "Kohgiluyeh\ and\ Boyer\-Ahmad",9876 => "Hormozgan",9877 => "Bushehr\ province",9881 => "Hamadan\ province",9883 => "Kermanshah\ province",9884 => "Ilam\ province",9886 => "Markazi",9887 => "Kurdistan",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"98$prefix"} if exists($map{"98$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+98|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
