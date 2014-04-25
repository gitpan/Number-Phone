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
package Number::Phone::StubCountry::LU;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20140425182230;

my $formatters = [{'pattern' => '(\\d{2})(\\d{3})','leading_digits' => '[2-5]|7[1-9]|[89](?:[1-9]|0[2-9])'},{'pattern' => '(\\d{2})(\\d{2})(\\d{2})','leading_digits' => '[2-5]|7[1-9]|[89](?:[1-9]|0[2-9])'},{'leading_digits' => '20','pattern' => '(\\d{2})(\\d{2})(\\d{3})'},{'leading_digits' => '2(?:[0367]|4[3-8])','pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{1,2})'},{'leading_digits' => '20','pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{3})'},{'pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{2})(\\d{1,2})','leading_digits' => '2(?:[0367]|4[3-8])'},{'pattern' => '(\\d{2})(\\d{2})(\\d{2})(\\d{1,4})','leading_digits' => '2(?:[12589]|4[12])|[3-5]|7[1-9]|[89](?:[1-9]|0[2-9])'},{'pattern' => '(\\d{3})(\\d{2})(\\d{3})','leading_digits' => '[89]0[01]|70'},{'leading_digits' => '6','pattern' => '(\\d{3})(\\d{3})(\\d{3})'}];
my $validators = {'personal_number' => '70\\d{6}','voip' => '20(?:1\\d{5}|[2-689]\\d{1,7})','pager' => '','special_rate' => '(801\\d{5})|(90[01]\\d{5})|()','fixed_line' => '(?:2(?:2\\d{1,2}|3[2-9]|[67]\\d|4[1-8]\\d?|5[1-5]\\d?|9[0-24-9]\\d?)|3(?:[059][05-9]|[13]\\d|[26][015-9]|4[0-26-9]|7[0-389]|8[08])\\d?|4\\d{2,3}|5(?:[01458]\\d|[27][0-69]|3[0-3]|[69][0-7])\\d?|7(?:1[019]|2[05-9]|3[05]|[45][07-9]|[679][089]|8[06-9])\\d?|8(?:0[2-9]|1[0-36-9]|3[3-9]|[469]9|[58][7-9]|7[89])\\d?|9(?:0[89]|2[0-49]|37|49|5[0-27-9]|7[7-9]|9[0-478])\\d?)\\d{1,7}','toll_free' => '800\\d{5}','geographic' => '(?:2(?:2\\d{1,2}|3[2-9]|[67]\\d|4[1-8]\\d?|5[1-5]\\d?|9[0-24-9]\\d?)|3(?:[059][05-9]|[13]\\d|[26][015-9]|4[0-26-9]|7[0-389]|8[08])\\d?|4\\d{2,3}|5(?:[01458]\\d|[27][0-69]|3[0-3]|[69][0-7])\\d?|7(?:1[019]|2[05-9]|3[05]|[45][07-9]|[679][089]|8[06-9])\\d?|8(?:0[2-9]|1[0-36-9]|3[3-9]|[469]9|[58][7-9]|7[89])\\d?|9(?:0[89]|2[0-49]|37|49|5[0-27-9]|7[7-9]|9[0-478])\\d?)\\d{1,7}','mobile' => '6(?:[269][18]|71)\\d{6}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (35222 => "Luxembourg",35223 => "Mondorf\-les\-Bains",35224 => "Luxembourg",35225 => "Luxembourg",35226 => "Luxembourg",35227 => "Luxembourg",35229 => "Luxembourg",35230 => "Capellen",35231 => "Bertrange",35232 => "Mersch",35233 => "Walferdange",35234 => "Senningerberg",35235 => "Sandweiler",35236 => "Hesperange",35237 => "Leudelange",35239 => "Steinfort",35240 => "Luxembourg",35242 => "Luxembourg",35243 => "Luxembourg",35244 => "Luxembourg",35245 => "Luxembourg",35246 => "Luxembourg",35247 => "Luxembourg",35248 => "Luxembourg",35249 => "Luxembourg",35250 => "Bascharage",35251 => "Dudelange",35252 => "Dudelange",35253 => "Esch\-sur\-Alzette",35254 => "Esch\-sur\-Alzette",35255 => "Esch\-sur\-Alzette",35256 => "Rumelange",35257 => "Esch\-sur\-Alzette",35258 => "Differdange",35259 => "Soleuvre",35271 => "Betzdorf",35272 => "Echternach",35274 => "Wasserbillig",35275 => "Grevenmacher",35276 => "Wormeldange",35278 => "Junglinster",35279 => "Berdorf",35280 => "Diekirch",35281 => "Ettelbruck",35283 => "Vianden",35287 => "Larochette",35292 => "Clervaux",35295 => "Wiltz",35297 => "Weiswampach",35299 => "Troisvierges",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"352$prefix"} if exists($map{"352$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+352|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
