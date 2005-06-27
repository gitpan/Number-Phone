use Test::More tests => 20;

use Number::Phone::Country;

ok(phone2country("1-800-000-0000") eq "NANP", "NANP: toll-free number IDed as generic NANP in 1-xxx-xxx-xxxx format");
ok(phone2country("1 800-000-0000") eq "NANP", "NANP: toll-free number IDed as generic NANP in 1 xxx-xxx-xxxx format");
ok(phone2country("219-464-4824") eq "US", "NANP: US number IDed in xxx-xxx-xxxx format");
ok(phone2country("(270) 274-5431") eq "US", "NANP: US number IDed in (xxx) xxx-xxxx format");
ok(phone2country("1 416 595 6136") eq "CA", "NANP: CA number IDed in 1 xxx xxx xxxx format");
ok(phone2country("787-764-1185") eq "PR", "NANP: PR number IDed in xxx-xxx-xxxx format");

# American Samoa has moved ...
ok(phone2country('+16841234567') eq 'AS', "NANP: AS number IDed in +1684xxxxxxx format");
ok(phone2country('6841234567') eq 'AS', "NANP: AS number IDed in xxxxxxxxxx format");
{ no warnings;
ok(phone2country('+6841234567') ne 'AS', "+684 *not* identified as AS"); 
}
# FIXME - test all countries!
ok(phone2country('+34123412345') eq 'ES', "+34 IDed as Spain");
ok(phone2country('+35012345') eq 'GI', "+350 IDed as Gibraltar");
ok(phone2country("+351-21-8463452") eq "PT", "+351 IDed as Portugal");
ok(phone2country('+3531234567') eq 'IE', "+353 IDed as Ireland");
ok(phone2country('+379123') eq 'VA', "+379 IDed as Vatican");
ok(phone2country('+3961234567') eq 'IT', "+39 IDed as Italy");
ok(phone2country('+44 1234567890') eq 'GB', "+44 IDed as GB");
ok(phone2country("+51-1-2217244") eq "PE", "+51 IDed as Peru");

# special cases
ok(phone2country('+3534812345678') eq 'GB', "+35348 IDed as GB");

ok(phone2country('+34956712345') eq 'GI', "+349567 IDed as Gibraltar");

ok(phone2country('+3966982123') eq 'VA', "+3966982 IDed as Vatican");

# FIXME - add Kazakhstan/Russia weirdness
