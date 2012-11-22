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
package Number::Phone::StubCountry::BR;
use base qw(Number::Phone::StubCountry);
  
use strict;
use warnings;
our $VERSION = 1.20121122000027;

my $formatters = [{'pattern' => '(\\d{2})(\\d{5})(\\d{4})','leading_digits' => '119'},{'pattern' => '(\\d{2})(\\d{4})(\\d{4})','leading_digits' => '[1-9][1-9]'},{'pattern' => '([34]00\\d)(\\d{4})','leading_digits' => '[34]00'},{'pattern' => '([3589]00)(\\d{2,3})(\\d{4})','leading_digits' => '[3589]00'}];
my $validators = {'personal_number' => '','toll_free' => '800\\d{6,7}','pager' => '','mobile' => '1(?:1(?:5[347]|[6-8]\\d|9\\d{1,2})|[2-9][6-9]\\d)\\d{6}|(?:[4689][1-9]|2[12478]|3[1-578]|5[13-5]|7[13-579])[6-9]\\d{7}','voip' => '','fixed_line' => '1[1-9][2-5]\\d{7}|(?:[4689][1-9]|2[12478]|3[1-578]|5[13-5]|7[13-579])[2-5]\\d{7}','special_rate' => '([34]00\\d{5})|([359]00\\d{6,7})|()'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (5511 => "S\Ã\£o\ Paulo\ \-\ SP",5512 => "S\Ã\£o\ Jos\Ã\©\ dos\ Campos\ \-\ SP",5513 => "Santos\ \-\ SP",5514 => "Bauru\ \-\ SP",5515 => "Sorocaba\ \-\ SP",5516 => "Ribeir\Ã\£o\ Preto\ \-\ SP",5517 => "S\Ã\£o\ Jos\Ã\©\ do\ Rio\ Preto\ \-\ SP",5518 => "Ara\Ã\§atuba\ \-\ SP",5519 => "Campinas\ \-\ SP",5521 => "Rio\ de\ Janeiro\ \-\ RJ",5522 => "Campos\ dos\ Goytacazes\ \-\ RJ",5524 => "Petr\Ã\³polis\ \-\ RJ",5527 => "Vit\Ã\³ria\ \-\ ES",5528 => "Cachoeiro\ de\ Itapemirim\ \-\ ES",5531 => "Belo\ Horizonte\ \-\ MG",5532 => "Juiz\ de\ Fora\ \-\ MG",5533 => "Governador\ Valadares\ \-\ MG",5534 => "Araguari\ \-\ MG",5537 => "Divin\Ã\³polis\ \-\ MG",5538 => "Montes\ Claros\ \-\ MG",5541 => "Curitiba\ \-\ PR",5542 => "Ponta\ Grossa\ \-\ PR",5543 => "Londrina\ \-\ PR",5544 => "Maring\Ã\¡\ \-\ PR",5545 => "Cascavel\ \-\ PR",5546 => "Pato\ Branco\ \-\ PR",5547 => "Joinville\ \-\ SC",5548 => "Florian\Ã\³polis\ \-\ SC",5549 => "Chapec\Ã\³\ \-\ SC",5551 => "Porto\ Alegre\ \-\ RS",5553 => "Pelotas\ \-\ RS",5554 => "Caxias\ do\ Sul\ \-\ RS",5561 => "Bras\Ã\­lia\ \-\ DF",5562 => "Goi\Ã\¢nia\ \-\ GO",5563 => "Palmas\ \-\ TO",5565 => "Cuiab\Ã\¡\ \-\ MT",5566 => "Rondon\Ã\³polis\ \-\ MT",5567 => "Campo\ Grande\ \-\ MS",5568 => "Rio\ Branco\ \-\ AC",5569 => "Porto\ Velho\ \-\ RO",5571 => "Salvador\ \-\ BA",5573 => "Itabuna\ \-\ BA",5574 => "Juazeiro\ \-\ BA",5575 => "Feira\ de\ Santana\ \-\ BA",5577 => "Vit\Ã\³ria\ da\ Conquista\ \-\ BA",5579 => "Aracaju\ \-\ SE",5581 => "Recife\ \-\ PE",5582 => "Macei\Ã\³\ \-\ AL",5583 => "Jo\Ã\£o\ Pessoa\ \-\ PB",5584 => "Natal\ \-\ RN",5585 => "Fortaleza\ \-\ CE",5586 => "Teresina\ \-\ PI",5587 => "Petrolina\ \-\ PE",5588 => "Juazeiro\ do\ Norte\ \-\ CE",5589 => "Picos\ \-\ PI",5591 => "Bel\Ã\©m\ \-\ PA",5592 => "Manaus\ \-\ AM",5593 => "Santar\Ã\©m\ \-\ PA",5594 => "Marab\Ã\¡\ \-\ PA",5595 => "Boa\ Vista\ \-\ RR",5596 => "Macap\Ã\¡\ \-\ AP",5598 => "S\Ã\£o\ Lu\Ã\­s\ \-\ MA",5599 => "Imperatriz\ \-\ MA",);
      foreach my $prefix (map { substr($number, 0, $_) } reverse(1..length($number))) {
        return $map{"55$prefix"} if exists($map{"55$prefix"});
      }
      return undef;
    }
sub new {
  my $class = shift;
  my $number = shift;
  $number =~ s/(^\+55|\D)//g;
  my $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
