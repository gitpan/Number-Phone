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
package Number::Phone::StubCountry::MZ;
use base qw(Number::Phone::StubCountry);

use strict;
use warnings;
our $VERSION = 1.20141203221723;

my $formatters = [{'pattern' => '([28]\\d)(\\d{3})(\\d{3,4})','leading_digits' => '2|8[2-7]'},{'pattern' => '(80\\d)(\\d{3})(\\d{3})','leading_digits' => '80'}];
my $validators = {'voip' => '','personal_number' => '','toll_free' => '800\\d{6}','fixed_line' => '2(?:[1346]\\d|5[0-2]|[78][12]|93)\\d{5}','geographic' => '2(?:[1346]\\d|5[0-2]|[78][12]|93)\\d{5}','pager' => '','special_rate' => '()|()|()','mobile' => '8[23467]\\d{7}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (25821 => "Maputo",25823 => "Beira",25824 => "Quelimane",258251 => "Manica",258252 => "Tete",25826 => "Nampula",258271 => "Lichinga",258272 => "Pemba",258281 => "Chokwe",258282 => "Xai\-Xai",258293 => "Inhambane",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"258$prefix"} if exists($map{"258$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+258|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
