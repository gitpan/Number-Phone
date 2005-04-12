package Number::Phone::Country;

use strict;
use warnings;

our $VERSION = 0.5;
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

my %idd_codes;

while (<DATA>) {
  s/\s+#.*//;
  chomp;
  last if /^__END__$/;
  my ($code, $country) = split(",");
  $idd_codes{$code} = $country;
}

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

        # FIXME - should we really return US for NANP-wide prefices like 800?
        # I don't think so!

        # see http://www.nanpa.com/number_resource_info/area_code_maps.html
        else { return 'US'; }
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
__DATA__
32,BE
90,TR
386,SI
358,FI
850,KR
376,AD
35348,GB
44,GB
599,AN
55,BR
84,VN
379,VA
3966982,VA
27,ZA
233,GH
998,UZ
95,MM
57,CO
220,GM
20,EG
231,LR
994,AZ
31,NL
504,HN
93,AF
672,AQ
964,IQ
65,SG
378,SM
349567,GI
350,GI
968,OM
675,PG
261,MG
291,ER
853,MO
374,AM
58,VE
226,BF
684,AS # FIXME delete on 2 Apr 2005
81,JP
60,MY
689,PF
886,TW
86,CN
62,ID
371,LV
241,GA
389,MK
677,SB
674,NR
82,KR
966,SA
973,BH
992,TJ
228,TG
590,GP
236,CF
268,SZ
249,SD
218,LY
596,MQ
49,DE
224,GN
993,TM
234,NG
385,HR
502,GT
594,GF
974,QA
420,CZ
212,MA
971,AE
352,LU
355,AL
238,CV
251,ET
253,DJ
509,HT
961,LB
47,NO
976,MN
98,IR
256,UG
216,TN
357,CY
43,AT
855,KH
372,EE
686,KI
852,HK
33,FR
63,PH
680,PW
227,NE
977,NP
598,UY
244,AO
880,BD
255,TZ
351,PT
264,NA
963,SY
297,AW
595,PY
240,GQ
359,BG
690,TK
61,AU
230,MU
299,GL
377,MC
92,PK
232,SL
423,LI
263,ZW
91,IN
266,LS
48,PL
505,NI
670,TL
692,MH
683,NU
995,GE
592,GY
221,SN
39,IT
64,NZ
41,CH
258,MZ
52,MX
688,TV
56,CL
66,TH
229,BJ
45,DK
260,ZM
507,PA
54,AR
237,CM
503,SV
673,BN
370,LT
967,YE
593,EC
682,CK
1,US
353,IE
506,CR
375,BY
30,GR
380,UA
965,KW
222,MR
252,SO
40,RO
250,RW
381,YU
501,BZ
254,KE
687,NC
960,MV
678,VU
373,MD
53,CU
387,BA
962,JO
245,GW
267,BW
269,KM
354,IS
46,SE
235,TD
257,BI
972,IL
36,HU
597,SR
94,LK
213,DZ
51,PE
356,MT
591,BO
34,ES
265,MW
975,BT
242,CG
__END__

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

Will go out of date every time the NANP has one of its code splits/overlays.
So that's about once a month then.  I'll do my best to keep it up to date.

=head1 AUTHOR

now maintained by David Cantrell E<lt>david@cantrell.org.ukE<gt>

originally by TJ Mather, E<lt>tjmather@maxmind.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by MaxMind LLC

Copyright 2004 David Cantrell

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
