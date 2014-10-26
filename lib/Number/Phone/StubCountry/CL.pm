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
package Number::Phone::StubCountry::CL;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20120129233326;

my $formatters = [{'pattern' => '(2)(\\d{3})(\\d{4})','leading_digits' => '2'},{'pattern' => '(\\d{2})(\\d{2,3})(\\d{4})','leading_digits' => '[357]|4[1-35]|6[13-57]'},{'pattern' => '(9)([6-9]\\d{3})(\\d{4})','leading_digits' => '9'},{'pattern' => '(44)(\\d{3})(\\d{4})','leading_digits' => '44'},{'pattern' => '([68]00)(\\d{3})(\\d{3,4})','leading_digits' => '60|8'},{'pattern' => '(600)(\\d{3})(\\d{2})(\\d{3})','leading_digits' => '60'},{'pattern' => '(1230)(\\d{3})(\\d{4})','leading_digits' => '1'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{6}|1230\\d{7}','pager' => '','mobile' => '9[6-9]\\d{7}','voip' => '44\\d{7}','fixed_line' => '(?:2|32|41)\\d{7}|(?:3[3-5]|4[235]|5[1-3578]|6[13-57]|7[1-35])\\d{6,7}','special_rate' => '(600\\d{7,8})|()|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (562 => 'Santiago',5632 => 'Valpara\�\�so',5633 => 'Quillota',5635 => 'San\ Antonio',5641 => 'Concepci\�\�n',5642 => 'Chill\�\�n',5643 => 'Los\ Angeles',5645 => 'Temuco',5651 => 'Coquimbo',5652 => 'Copiap\�\�',5653 => 'Ovalle',5655 => 'Antofagasta',5657 => 'Iquique',5658 => 'Arica',5661 => 'Punta\ Arenas',5663 => 'Valdivia',5664 => 'Osorno',5665 => 'Puerto\ Montt',5671 => 'Talca',5672 => 'Rancagua',5673 => 'Linares',5675 => 'Curic\�\�',);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"56$prefix"} if exists($map{"56$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+56|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
