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
package Number::Phone::StubCountry::CG;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140617214231;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})(\\d{4})','leading_digits' => '[02]'},{'pattern' => '(\\d)(\\d{4})(\\d{4})','leading_digits' => '8'}];
my $validators = {'voip' => '','special_rate' => '()|()|()','pager' => '','fixed_line' => '222[1-589]\\d{5}','personal_number' => '','mobile' => '0[14-6]\\d{7}','toll_free' => '800\\d{6}','geographic' => '222[1-589]\\d{5}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (2422221 => "Cuvette",2422222 => "Likouala\/Sangha",2422223 => "Pool",2422224 => "Plateaux",2422225 => "Bouenza\/Lekoumou\/Niari",2422228 => "Brazzaville",2422229 => "Pointe\-Noire",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"242$prefix"} if exists($map{"242$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+242|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
