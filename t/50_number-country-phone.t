# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl 1.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 19 };
use Number::Phone::Country;
ok(1); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my_test("219-464-4824","US");
my_test("1-800-000-0000","US");
my_test("1 800-000-0000","US");
my_test("(270) 274-5431","US");
my_test("+51-1-2217244","PE");
my_test("+351-21-8463452","PT");
my_test("1 416 595 6136","CA");
my_test("787-764-1185","PR");
my_test('+16841234567', 'AS');
my_test('+6841234567', 'AS');    # FIXME delete on 2 Apr 2005
my_test('+44 1234567890', 'GB');
my_test('+3534812345678', 'GB');
my_test('+3531234567', 'IE');
my_test('+34956712345', 'GI');
my_test('+35012345', 'GI');
my_test('+3966982123', 'VA');
my_test('+379123', 'VA');
my_test('+3961234567', 'IT');


sub my_test {
  my ($phone, $expected_country) = @_;
  my $actual_country = phone2country($phone);
  ok($actual_country,$expected_country);
}
