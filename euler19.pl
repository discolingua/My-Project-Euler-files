#!/usr/bin/perl

for ($y = 1901; $y <= 2000; $y++) {
    for ($m = 1; $m <= 12; $m++) {
        if (`/usr/bin/cal $m $y | grep "^ 1 "`) {
            $sundays++;
        }
    }
}
printf "$sundays\n";
