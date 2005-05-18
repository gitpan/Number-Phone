package Number::Phone::Country;

use strict;
use warnings;

our $VERSION = 1.0;
our $use_uk = 0;

sub import {
    shift;
    my $export = 1;
    foreach my $param (@_) {
        if(lc($param) eq 'noexport') { $export = 0; }
         elsif(lc($param) eq 'uk') { $use_uk = 1; }
    }
    if($export) {
        my $callpkg = caller(1);
        no strict 'refs';
        *{"$callpkg\::phone2country"} = \&{__PACKAGE__."\::phone2country"};
    }
}

my %idd_codes = (
    # 1     => 'NANP',

    20      => 'EG', 212     => 'MA', 213     => 'DZ', 216     => 'TN',
    218     => 'LY', 220     => 'GM', 221     => 'SN', 222     => 'MR',
    223     => 'ML',
    224     => 'GN',
    225     => 'CI', 226     => 'BF', 227     => 'NE', 228     => 'TG',
    229     => 'BJ', 230     => 'MU', 231     => 'LR', 232     => 'SL',
    233     => 'GH', 234     => 'NG', 235     => 'TD', 236     => 'CF',
    237     => 'CM', 238     => 'CV',
    239     => 'ST', 240     => 'GQ', 241     => 'GA',
    242     => 'CG', 243     => 'CD', 244     => 'AO', 245     => 'GW',
    246     => 'IO', 247     => 'AC', 248     => 'SC', 249     => 'SD',
    250     => 'RW', 251     => 'ET', 252     => 'SO', 253     => 'DJ',
    254     => 'KE', 255     => 'TZ', 256     => 'UG', 257     => 'BI',
    258     => 'MZ', 260     => 'ZM', 261     => 'MG', 262     => 'RE',
    263     => 'ZW',
    264     => 'NA', 265     => 'MW', 266     => 'LS', 267     => 'BW',
    268     => 'SZ', 269     => 'KM', 27      => 'ZA', 290     => 'SH',
    291     => 'ER',
    297     => 'AW', 298     => 'FO', 299     => 'GL',
    
    30      => 'GR', 31      => 'NL', 32      => 'BE', 33      => 'FR',
    34      => 'ES', 349567  => 'GI', 350     => 'GI', 351     => 'PT',
    352     => 'LU', 353     => 'IE', 35348   => 'GB', 354     => 'IS',
    355     => 'AL', 356     => 'MT', 357     => 'CY', 358     => 'FI',
    359     => 'BG', 36      => 'HU', 370     => 'LT', 371     => 'LV',
    372     => 'EE', 373     => 'MD', 374     => 'AM', 375     => 'BY',
    376     => 'AD', 377     => 'MC', 378     => 'SM', 379     => 'VA',
    380     => 'UA', 381     => 'YU', 385     => 'HR', 386     => 'SI',
    387     => 'BA',
    389     => 'MK', 39      => 'IT', 3966982 => 'VA',
    40      => 'RO', 41      => 'CH', 420     => 'CZ', 421     => 'SK',
    423     => 'LI',
    43      => 'AT', 44      => 'GB', 45      => 'DK', 46      => 'SE',
    47      => 'NO', 48      => 'PL', 49      => 'DE',
    
    500     => 'FK',
    501     => 'BZ', 502     => 'GT', 503     => 'SV', 504     => 'HN',
    505     => 'NI', 506     => 'CR', 507     => 'PA',
    508     => 'PM', 509     => 'HT',
    51      => 'PE', 52      => 'MX', 53      => 'CU', 54      => 'AR',
    55      => 'BR', 56      => 'CL', 57      => 'CO', 58      => 'VE',
    590     => 'GP', 591     => 'BO', 592     => 'GY', 593     => 'EC',
    594     => 'GF', 595     => 'PY', 596     => 'MQ', 597     => 'SR',
    598     => 'UY', 599     => 'AN',
    
    60      => 'MY', 61      => 'AU', 62      => 'ID', 63      => 'PH',
    64      => 'NZ', 65      => 'SG', 66      => 'TH', 670     => 'TL',
    672     => 'AUX',
    673     => 'BN', 674     => 'NR', 675     => 'PG', 676     => 'TO',
    677     => 'SB', 678     => 'VU', 679     => 'FJ', 680     => 'PW',
    681     => 'WW', 682     => 'CK',
    683     => 'NU', 685     => 'WS', 686     => 'KI', 687     => 'NC',
    688     => 'TV',
    689     => 'PF', 690     => 'TK', 691     => 'FM', 692     => 'MH',
    
    # 7     => 'RU & KZ',
    
    81      => 'JP', 82      => 'KR', 84      => 'VN', 850     => 'KP',
    852     => 'HK', 853     => 'MO', 855     => 'KH', 856     => 'LA',
    86      => 'CN',
    880     => 'BD',
    886     => 'TW',
    
    90      => 'TR', 91      => 'IN', 92      => 'PK', 93      => 'AF',
    94      => 'LK', 95      => 'MM', 960     => 'MV', 961     => 'LB',
    962     => 'JO', 963     => 'SY', 964     => 'IQ', 965     => 'KW',
    966     => 'SA', 967     => 'YE', 968     => 'OM', 970     => 'PS',
    971     => 'AE',
    972     => 'IL', 973     => 'BH', 974     => 'QA', 975     => 'BT',
    976     => 'MN', 977     => 'NP',
    98      => 'IR',
    992     => 'TJ',
    993     => 'TM', 994     => 'AZ', 995     => 'GE',
    996     => 'KG', 998     => 'UZ',

    3883    => 'ETNS', # http://wtng.info/wtng-reg.html#Europewide
    800     => 'InternationalFreephone',
    808     => 'SharedCostServices',
    870     => 'Inmarsat',
    871     => 'Inmarsat',
    872     => 'Inmarsat',
    873     => 'Inmarsat',
    874     => 'Inmarsat',
    878     => 'UniversalPersonalTelecoms',
    881     => 'GMMS',
    882     => 'InternationalNetworks',
    979     => 'InternationalPremiumRate',
    991     => 'ITPCS',
);

# while (<DATA>) {
#   s/\s+#.*//;
#   chomp;
#   last if /^__END__$/;
#   my ($code, $country) = split(",");
#   $idd_codes{$code} = $country;
# }

sub phone2country {
    my ($phone) = @_;
    $phone =~ s/[^\d+]//g;
    $phone = '+1'.$phone unless(substr($phone, 0, 1) =~ /[1+]/);
    $phone =~ s/\D//g;

    # deal with NANP insanity

    if($phone =~ m!^1(\d{3})\d{7}$!) {

        # see http://www.cnac.ca/mapcodes.htm
        if($1 =~ m!^(
            204|250|289|
            306|
            403|416|418|450|
            506|514|519|
            604|613|647|
            705|709|778|780|
            807|819|867|
            902|905
        )$!x) {
            return 'CA';
        }
        # see http://www.nanpa.com/number_resource_info/area_code_maps.html
        elsif($1 =~ m/^(205|251|256|334|659|907|480|520|602|623|928|501|479|870|209|213|310|323|341|369|408|415|424|442|510|530|559|562|619|626|627|628|650|657|661|669|707|714|747|752|760|764|805|818|831|858|909|916|925|935|949|951|303|719|720|970|203|475|860|959|302|202|239|305|321|352|386|407|561|689|727|754|772|786|813|850|863|904|941|954|229|404|470|478|678|706|770|912|808|208|217|224|309|312|331|464|618|630|708|773|815|847|872|219|260|317|574|765|812|319|515|563|641|712|316|620|785|913|270|502|606|859|225|318|337|504|985|207|227|240|301|410|443|667|339|351|413|508|617|774|781|857|978|231|248|269|278|313|517|586|616|679|734|810|906|947|989|218|320|507|612|651|763|952|228|601|662|314|417|557|573|636|660|816|975|406|308|402|702|775|603|201|551|609|732|848|856|862|908|973|505|575|212|315|347|516|518|585|607|631|646|716|718|845|914|917|252|336|704|828|910|919|980|984|701|216|234|283|330|380|419|440|513|567|614|740|937|405|580|918|503|541|971|215|267|412|445|484|570|610|717|724|814|835|878|401|803|843|864|605|423|615|731|865|901|931|210|214|254|281|325|361|409|430|432|469|512|682|713|737|806|817|830|832|903|915|936|940|956|972|979|385|435|801|802|276|434|540|571|703|757|804|206|253|360|425|509|564|304|262|414|608|715|920|307)$/) {
            return 'US';
        }

        # see http://wtng.info/wtng-cod.html#WZ1
        elsif($1 eq '242') { return 'BS'; }
        elsif($1 eq '246') { return 'BB'; }
        elsif($1 eq '264') { return 'AI'; }
        elsif($1 eq '268') { return 'AG'; }
        elsif($1 eq '284') { return 'VG'; }
        elsif($1 eq '340') { return 'VI'; }
        elsif($1 eq '345') { return 'KY'; }
        elsif($1 eq '441') { return 'BM'; }
        elsif($1 eq '473') { return 'GD'; }
        elsif($1 eq '649') { return 'TC'; }
        elsif($1 eq '664') { return 'MS'; }
        elsif($1 eq '670') { return 'MP'; }
        elsif($1 eq '671') { return 'GU'; }
        elsif($1 eq '684') { return 'AS'; }
        elsif($1 eq '758') { return 'LC'; }
        elsif($1 eq '767') { return 'DM'; }
        elsif($1 eq '784') { return 'VC'; }
        elsif($1 eq '787') { return 'PR'; }
        elsif($1 eq '809') { return 'DO'; }
        elsif($1 eq '868') { return 'TT'; }
        elsif($1 eq '869') { return 'KN'; }
        elsif($1 eq '876') { return 'JM'; }
        elsif($1 eq '939') { return 'PR'; }


        else { return 'NANP'; }
    }

    # following are from http://www.itu.int/itudoc/itu-t/number/k/kaz/75917.html
    # and http://wtng.info/ccod-7.html
    # see also http://wtng.info/wtng-kk.html#Kazakstan
    elsif($phone =~ /^7/) {
        return 'KZ' if($phone =~ /^7(310|311|312|313|314|315|316|317|318|320|321|322|323|324|325|326|327|328|329|336|300|333|570|571|573|574|700)/);
        return 'RU';
    }

    else {
        my @retards = map { substr($phone, 0, $_) } reverse 1..length($phone);
        foreach my $idd (@retards) {
            if(exists $idd_codes{$idd}) {
                my $country = $idd_codes{$idd};
                if($country eq 'GB' && $use_uk) { $country = 'UK'; }
                return $country;
            }
        }
    }
    return;
}

1;
# __DATA__
# __END__

=head1 NAME

Number::Phone::Country - Lookup country of phone number

=head1 SYNOPSIS

  use Number::Phone::Country;

  #returns 'CA' for Canada
  my $iso_country_code = phone2country("1 (604) 111-1111");

or

  use Number::Phone::Country qw(noexport uk);

  my $iso_country_code = Number::Phone::Country::phone2country(...);

=head1 DESCRIPTION

This module lookups up the country based on a telephone number.
It uses the International Direct Dialing (IDD) prefix, and
lookups North American numbers using the Area Code, in accordance
with the North America Numbering Plan (NANP).

Note that by default, phone2country is exported into your namespace.  This
is deprecated and may be removed in a future version.  You can turn that
off by passing the 'noexport' constant when you use the module.

Also be aware that the ISO code for the United Kingdom is GB, not UK.  If
you would prefer UK, pass the 'uk' constant.

=head1 SEE ALSO

L<Parse::PhoneNumber>

=head1 BUGS

It has not been possible to maintain complete backwards compatibility with
the original 0.01 release.  To fix a
bug, while still retaining the ability to look up plain un-adorned NANP
numbers without the +1 prefix, all non-NANP numbers *must* have their
leading + sign.

Another incompatibility - it was previously assumed that any number not
assigned to some other country was in the US.  This was incorrect for (eg)
800 numbers.  These are now identified as being generic NANP numbers.

Will go out of date every time the NANP has one of its code splits/overlays.
So that's about once a month then.  I'll do my best to keep it up to date.

=head1 AUTHOR

now maintained by David Cantrell E<lt>david@cantrell.org.ukE<gt>

originally by TJ Mather, E<lt>tjmather@maxmind.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by MaxMind LLC

Copyright 2004, 2005 David Cantrell

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
