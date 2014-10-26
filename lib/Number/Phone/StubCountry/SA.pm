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
our $VERSION = 1.20120129233327;

my $formatters = [{'pattern' => '([1-467])(\\d{3})(\\d{4})','leading_digits' => '[1-467]'},{'pattern' => '(9200)(\\d{3})(\\d{4})','leading_digits' => '9'},{'pattern' => '(5\\d)(\\d{3})(\\d{4})','leading_digits' => '5'},{'pattern' => '(800)(\\d{3})(\\d{4})','leading_digits' => '80'},{'pattern' => '(8111)(\\d{3})(\\d{3})','leading_digits' => '81'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{7}','pager' => '','mobile' => '(?:5[013-689]\\d|8111)\\d{6}','voip' => '','fixed_line' => '(?:[12][24-8]|3[35-8]|4[34-68]|6[2-5]|7[235-7])\\d{6}','special_rate' => '()|(9200\\d{7})|()'};
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+966|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
