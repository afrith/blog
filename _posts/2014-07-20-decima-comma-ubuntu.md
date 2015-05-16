---
layout: post
title: Getting rid of the decimal comma in Ubuntu
---

At some point in school, we South Africans are told that the official [decimal separator](http://en.wikipedia.org/wiki/Decimal_separator) is the comma.[¹](#n1) Most of us then proceed to ignore this—at least in English use[²](#n2)—because it differs from the decimal point used in the rest of the English-speaking world, and thereby creates confusion. Thankfully, the maintainers of the [`glibc` locale data](http://sourceware.org/glibc/wiki/Locales)—and thus the number formats used in Linux systems—agree with me on this question, and the South African English locale uses the decimal point.

Unfortunately, the developers of Ubuntu Linux have come across [a government communications style guide](http://www.gcis.gov.za/sites/default/files/editorial_styleguide_2011.pdf)—a style guide widely ignored even within the government—which specifies the use of the decimal comma. They have therefore included in Ubuntu a patch which changes the decimal separator for South African English to a comma.[³](#n3) Reversing this change is one of the first things I do after setting up a new Ubuntu (or Linux Mint) install. Fortunately it is quite easy, and I give the instructions here to help those who suffer from the same annoyance.

##The simple way
Run the command

    sudo update-locale LC_NUMERIC="en_GB.UTF-8"

The change won't take effect until you log out and back in again. This tells your system to use the British English settings for number formatting, and therefore to use the decimal point.

(If, for some reason, `update-locale` doesn't work for you, you can produce the same results by adding the line `LC_NUMERIC="en_GB.UTF-8"` to the file `/etc/default/locale`.)

##The problem

This method changes `LC_NUMERIC` which defines the format for ordinary numbers, but not `LC_MONETARY`, which defines the format for currency values. We could change `LC_MONETARY` to "`en_GB.UTF-8`", but then it would also change the currency symbol from "R" to "£".

##The complicated way

If we want to change the decimal separator for monetary values, without changing the currency symbol, we will have to edit the `en_ZA` locale definitions. You can download [my patch file `en_ZA-decimal-point.patch`](http://stuff.adrianfrith.com/en_ZA-decimal-point.patch), and then apply it to the locale definitions by running the commands

    sudo patch /usr/share/i18n/locales/en_ZA en_ZA-decimal-point.patch
    sudo locale-gen

The changes will take effect immediately. You may have to repeat this process if the `locales` package is upgraded, because the upgrade will overwrite the locale definitions.

----

<ol>
<li id="n1">Per the "National Measuring Standards", Government Notice R. 1144, published on 5 July 1974 in *Government Gazette* No. 4326.</li>
<li id="n2">I am informed that in Afrikaans the decimal comma is more commonly used. I have no information about the other South African languages.</li>
<li id="n3">See <a href="https://bugs.launchpad.net/ubuntu/+source/langpack-locales/+bug/887395">Launchpad bug #887395</a> and <a href="http://bazaar.launchpad.net/~ubuntu-branches/ubuntu/utopic/langpack-locales/utopic/view/head:/debian/patches/ubuntu-en_ZA-decimal.patch"><code>ubuntu-en_ZA-decimal.patch</code></a>.</li>
</ol>
