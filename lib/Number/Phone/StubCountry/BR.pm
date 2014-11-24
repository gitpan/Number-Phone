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
our $VERSION = 1.20141124170811;

my $formatters = [{'pattern' => '(\\d{4})(\\d{4})','leading_digits' => '[2-9](?:[1-9]|0[1-9])'},{'pattern' => '(\\d{5})(\\d{4})','leading_digits' => '9(?:[1-9]|0[1-9])'},{'pattern' => '(\\d{3,5})','leading_digits' => '1[125689]'},{'pattern' => '(\\d{2})(\\d{5})(\\d{4})','leading_digits' => '(?:1[1-9]|2[12478]|9[1-9])9'},{'pattern' => '(\\d{2})(\\d{4})(\\d{4})','leading_digits' => '[1-9][1-9]'},{'pattern' => '([34]00\\d)(\\d{4})','leading_digits' => '[34]00'},{'pattern' => '([3589]00)(\\d{2,3})(\\d{4})','leading_digits' => '[3589]00'}];
my $validators = {'toll_free' => '800\\d{6,7}','mobile' => '1[1-9](?:7|9\\d)\\d{7}|(?:2[12478]|9[1-9])9?[6-9]\\d{7}|(?:3[1-578]|[468][1-9]|5[13-5]|7[13-579])[6-9]\\d{7}','voip' => '','fixed_line' => '1[1-9][2-5]\\d{7}|(?:[4689][1-9]|2[12478]|3[1-578]|5[13-5]|7[13-579])[2-5]\\d{7}','special_rate' => '([34]00\\d{5})|([359]00\\d{6,7})|()','personal_number' => '','pager' => '','geographic' => '1[1-9][2-5]\\d{7}|(?:[4689][1-9]|2[12478]|3[1-578]|5[13-5]|7[13-579])[2-5]\\d{7}'};sub areaname { my $self = shift; my $number = $self->{number}; my %map = (5511 => "S\Ã\£o\ Paulo\ \-\ SP",5512 => "S\Ã\£o\ Jos\Ã\©\ dos\ Campos\ \-\ SP",5513 => "Santos\ \-\ SP",5514 => "Bauru\ \-\ SP",5515 => "Sorocaba\ \-\ SP",5516 => "Ribeir\Ã\£o\ Pr\Ã\ªto\ \-\ SP",5517 => "S\Ã\£o\ Jos\Ã\©\ do\ Rio\ Pr\Ã\ªto\ \-\ SP",5518 => "Presidente\ Prudente\ \-\ SP",5519 => "Campinas\ \-\ SP",5521 => "Rio\ de\ Janeiro",5522 => "Rio\ de\ Janeiro",5524 => "Petr\Ã\³polis\ \-\ RJ",5527 => "Vit\Ã\³ria\ \-\ ES",5528 => "Cachoeiro\ de\ Itapemirim\ \-\ ES",5531 => "Minas\ Gerais",5532 => "Juiz\ de\ Fora\ \-\ MG",5533 => "Governador\ Valadares\ \-\ MG",5534 => "Minas\ Gerais",5535 => "Minas\ Gerais",5537 => "Divin\Ã\³polis\ \-\ MG",5538 => "Montes\ Claros\ \-\ MG",5541 => "Curitiba\ \-\ PR",5542 => "Paran\Ã\¡",5543 => "Londrina\ \-\ PR",5544 => "Maring\Ã\¡\ \-\ PR",5545 => "Foz\ do\ Igua\Ã\§u\ \-\ PR",5546 => "Francisco\ Beltr\Ã\£o\ \-\ PR",5547 => "Santa\ Catarina",5548 => "Florian\Ã\³polis\ \-\ SC",5549 => "Santa\ Catarina",5551 => "Rio\ Grande\ do\ Sul",5552 => "Rio\ Grande\ do\ Sul",5553 => "Pelotas\ \-\ RS",5554 => "Caxias\ do\ Sul\ \-\ RS",5555 => "Rio\ Grande\ do\ Sul",5561 => "Bras\Ã\­lia\ \-\ DF",5562 => "Goi\Ã\¢nia\ \-\ GO",5563 => "Palmas\ \-\ TO",5564 => "Itumbiara\ \-\ GO",5565 => "Cuiab\Ã\¡\ \-\ MT",5566 => "Mato\ Grosso",5567 => "Campo\ Grande\ \-\ MS",5568 => "Rio\ Branco\ \-\ AC",5569 => "Rond\Ã\´nia",5571 => "Salvador\ \-\ BA",5573 => "Itabuna\ \-\ BA",5574 => "Irec\Ã\ª\ \-\ BA",5575 => "Feira\ de\ Santana\ \-\ BA",5577 => "Vit\Ã\³ria\ da\ Conquista\ \-\ BA",5579 => "Aracaju\ \-\ SE",5581 => "Pernambuco",5582 => "Macei\Ã\³\ \-\ AL",5583 => "Jo\Ã\£o\ Pessoa\ \-\ PB",5584 => "Natal\ \-\ RN",5585 => "Fortaleza\ \-\ CE",5586 => "Teresina\ \-\ PI",5587 => "Petrolina\ \-\ PE",5588 => "Cear\Ã\¡",5589 => "Picos\ \-\ PI",5591 => "Bel\Ã\©m\ \-\ PA",5592 => "Manaus\ \-\ AM",5593 => "Santar\Ã\©m\ \-\ PA",5594 => "Par\Ã\¡",5595 => "Boa\ Vista\ \-\ RR",5596 => "Macap\Ã\¡\ \-\ AP",5597 => "Amazonas",5598 => "S\Ã\£o\ Lu\Ã\­s\ \-\ MA",5599 => "Imperatriz\ \-\ MA",);
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
  return $self if ($self->is_valid());
  $number =~ s/(^0)//g;
  $self = bless({ number => $number, formatters => $formatters, validators => $validators }, $class);
  return $self->is_valid() ? $self : undef;
}

1;
