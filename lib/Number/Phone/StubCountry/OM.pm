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
package Number::Phone::StubCountry::OM;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121030162647;

my $formatters = [{'pattern' => '(2\\d)(\\d{6})','leading_digits' => '2'},{'pattern' => '(9\\d{3})(\\d{4})','leading_digits' => '9'},{'pattern' => '([58]00)(\\d{4,6})','leading_digits' => '[58]'}];
my $validators = {'personal_number' => '','toll_free' => '8007\\d{4,5}|500\\d{4}','pager' => '','mobile' => '9[1-9]\\d{6}','voip' => '','fixed_line' => '2[2-6]\\d{6}','special_rate' => '()|()|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+968|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
