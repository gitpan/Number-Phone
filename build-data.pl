#!/usr/local/bin/perl

# THIS SHELL SCRIPT IS NOT INTENDED FOR END USERS OR FOR PEOPLE INSTALLING
# THE MODULES, BUT FOR THE AUTHOR'S USE WHEN UPDATING THE DATA FROM OFCOM'S
# PUBLISHED DATA.

use strict;
use warnings;

use Text::CSV_XS;
use Digest::MD5 'md5_base64';
use Data::Dumper;

my $csv = Text::CSV_XS->new();

open(MODULE, '>Data.pm') || die("Can't write Data.pm\n");

print MODULE "package Number::Phone::UK::Data;\n\n";
print MODULE "# automatically generated file, don't edit\n\n";
print MODULE "our \$VERSION = 1.".join("", (gmtime())[5] + 1900, sprintf('%02d', (gmtime())[4] + 1), sprintf('%02d', (gmtime())[3])).";\n\n";

my @geo_prefices = my @free_prefices = my @network_svc_prefices = my @corporate_prefices = my @personal_prefices = my @pager_prefices = my @mobile_prefices = my @special_prefices = my @adult_prefices = my @ip_prefices = my %areanames = ();

open(SABC, 'sabc.txt') || die("Can't read sabc.txt\n");

while(my $line = <SABC>) {
    $line =~ s/£/UKP/g;
    $csv->parse($line) || die("Bad CSV line in sabc.txt\n\n$line\n\n");
    my @fields = $csv->fields();
    next if($fields[3] =~ /(unassigned|not to be used|expansion$)/i || $fields[2] eq 'Not Designated');

    push @geo_prefices, $fields[0] if($fields[0] =~ /^[1234]/);

    if($fields[3] =~ /(Emergency Services|Internet for Schools|Internet Services|(Internal|Inbound) Routing|Broadband Services)/i) {
        push @network_svc_prefices, $fields[0]
    } elsif($fields[3] =~ /(Freephone|Free to Caller)/i) {
        push @free_prefices, $fields[0]
    } elsif($fields[3] eq 'Corporate Numbering') {
        push @corporate_prefices, $fields[0]
    } elsif($fields[3] =~ /(Personal Numbering|Find-me-anywhere)/i) {
        push @personal_prefices, $fields[0]
    } elsif($fields[3] eq 'Paging services') {
        push @pager_prefices, $fields[0]
    } elsif($fields[3] eq 'Mobile services') {
        push @mobile_prefices, $fields[0]
    } elsif(
        $fields[3] =~ /^(PRS|Special Services)/i ||
	$fields[3] eq 'Local Rate' ||
        $fields[3] eq 'National Rate'
    ) {
        push @special_prefices, $fields[0];
        if($fields[3] =~ /(sexual entertainment|sexual nature)/i) {
            push @adult_prefices, $fields[0]
        }
    } else {
        $areanames{$fields[0]} = $fields[3];
    }

    # FIXME - need to deal with 81NN onwards
}
close(SABC);

my @telco_length_data = ();
open(S1, 's1_code.txt') || die("Can't open s1_code.txt\n");
while(my $line = <S1>) {
    $line =~ s/£/UKP/g;
    $csv->parse($line) || die("Bad CSV line in s1_code.txt\n\n$line\n\n");
    my @fields = $csv->fields();
    next if($fields[2] ne 'Allocated');
    
    my $retard = join('',@fields[0,1]);
    my $telco = $fields[4];
    my $format = $fields[5];

    push @telco_length_data, [$retard, $telco, $format];
}
close(S1);
open(S8, 's8_code.txt') || die("Can't open s8_code.txt\n");
while(my $line = <S8>) {
    $line =~ s/£/UKP/g;
    $csv->parse($line) || die("Bad CSV line in s8_code.txt\n\n$line\n\n");
    my @fields = $csv->fields();
    next if($fields[2] !~ /^Allocated( for Migration only)?$/ || $fields[5] eq 'mixed operators');
    
    my $retard = join('',@fields[0,1]);
    my $telco = $fields[5];
    my $format = $fields[7];

    push @telco_length_data, [$retard, $telco, $format];
}
close(S8);
open(S1F, 's1f_code.txt') || die("Can't open s1f_code.txt\n");
while(my $line = <S1F>) {
    $line =~ s/£/UKP/g;
    $csv->parse($line) || die("Bad CSV line in s1f_code.txt\n\n$line\n\n");
    my @fields = $csv->fields();
    next if($fields[3] ne 'Allocated');
    
    my $retard = join('',@fields[0..2]);
    my $telco = $fields[5];
    my $format = $fields[6];

    push @telco_length_data, [$retard, $telco, $format];
}
close(S1F);
open(S8F, 's8f_code.txt') || die("Can't open s8f_code.txt\n");
while(my $line = <S8F>) {
    $line =~ s/£/UKP/g;
    $csv->parse($line) || die("Bad CSV line in s8f_code.txt\n\n$line\n\n");
    my @fields = $csv->fields();
    next if($fields[3] !~ /^Allocated( for Migration only)?$/);
    
    my $retard = join('',@fields[0..2]);
    my $telco = $fields[5];
    my $format = $fields[6];

    push @telco_length_data, [$retard, $telco, $format];
}
close(S8F);
open(S5, 's5_code.txt') || die("Can't open s5_code.txt\n");
while(my $line = <S5>) {
    $line =~ s/£/UKP/g;
    $csv->parse($line) || die("Bad CSV line in s5_code.txt\n\n$line\n\n");
    my @fields = $csv->fields();
    next if($fields[2] ne 'Allocated');
    
    my $retard = join('',@fields[0, 1]);
    my $telco = $fields[3];
    my $format = $fields[4];

    push @ip_prefices, $retard if($fields[5] =~ /voip/i);

    push @telco_length_data, [$retard, $telco, $format];
}
close(S5);
open(S7, 's7_code.txt') || die("Can't open s7_code.txt\n");
while(my $line = <S7>) {
    $line =~ s/£/UKP/g;
    $csv->parse($line) || die("Bad CSV line in s7_code.txt\n\n$line\n\n");
    my @fields = $csv->fields();
    next if($fields[2] ne 'Allocated');
    
    (my $retard = join('',@fields[0, 1])) =~ s/\D//g; # there's spaces in OFCOM's data!
    my $telco = $fields[4];
    my $format = $fields[6];

    push @telco_length_data, [$retard, $telco, $format];
    push @free_prefices, $retard
        if($fields[5] =~ /free to caller/i);
}
close(S7);
open(S9, 's9_code.txt') || die("Can't open s9_code.txt\n");
while(my $line = <S9>) {
    $line =~ s/£/UKP/g;
    $csv->parse($line) || die("Bad CSV line in s9_code.txt\n\n$line\n\n");
    my @fields = $csv->fields();
    next if($fields[2] ne 'Allocated');
    
    my $retard = join('',@fields[0, 1]);
    my $telco = $fields[5];
    my $format = $fields[7];

    push @telco_length_data, [$retard, $telco, $format];
}
close(S9);

print MODULE "our \%geo_prefices = map { (\$_, 1) } qw(".join(' ', @geo_prefices).");\n";
print MODULE "our \%network_svc_prefices = map { (\$_, 1) } qw(".join(' ', @network_svc_prefices).");\n";
print MODULE "our \%free_prefices = map { (\$_, 1) } qw(".join(' ', @free_prefices).");\n";
print MODULE "our \%corporate_prefices = map { (\$_, 1) } qw(".join(' ', @corporate_prefices).");\n";
print MODULE "our \%personal_prefices = map { (\$_, 1) } qw(".join(' ', @personal_prefices).");\n";
print MODULE "our \%pager_prefices = map { (\$_, 1) } qw(".join(' ', @pager_prefices).");\n";
print MODULE "our \%mobile_prefices = map { (\$_, 1) } qw(".join(' ', @mobile_prefices).");\n";
print MODULE "our \%special_prefices = map { (\$_, 1) } qw(".join(' ', @special_prefices).");\n";
print MODULE "our \%adult_prefices = map { (\$_, 1) } qw(".join(' ', @adult_prefices).");\n";
print MODULE "our \%ip_prefices = map { (\$_, 1) } qw(".join(' ', @ip_prefices).");\n";
print MODULE "our \%areanames = (".join(', ', map {
   s/\\/\\\\/g;
   s/"/\\"/g;
   s/( National Dialling)//ig;
   s/^(.*)$/"$1"/ if(/\D/);
   $_;
} %areanames).");\n";

print MODULE "our \%telco_and_length = (\n";

my %telco_format_cache = ();
foreach my $datum (@telco_length_data) {
    my($retard, $telco, $format) = @{$datum};
    $format = '0+10' if($format eq '(0)+10' || $format =~ /^10 digit number/i);
    $format = '0+7' if($format =~ /^7 digit number/i);
    $format = '0+9' if($format =~ /^9 digit number/i);
    $format = '?' if($format eq 'RTO');

    my $cache_key = md5_base64($telco.'_'.$format);
    $telco_format_cache{$cache_key} = {
        telco => $telco,
	format => $format
    };

    print MODULE "    '$retard' => '$cache_key',\n";
}
print MODULE ");\n";

print MODULE "our %telco_format = (\n";
foreach my $cache_key (keys %telco_format_cache) {
    my($telco, $format) = map { s/\\/\\\\/g; s/'/\\'/g; $_; }
	$telco_format_cache{$cache_key}->{telco},
	$telco_format_cache{$cache_key}->{format};
    print MODULE "    '$cache_key' => { telco => '$telco', format => '$format' },\n";
}
print MODULE ");\n";
