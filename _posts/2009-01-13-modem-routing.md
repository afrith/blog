---
layout: post
title: HSDPA modem and custom routing
---

So, for my Christmas present to myself I got a [Huawei E220](http://en.wikipedia.org/wiki/Huawei_E220) HSDPA modem - it's one of the Vodafone-branded ones, but I reflashed it with the generic firmware. Anyway, it's an awesome thing to have for a geek like me - I can be connected to the Internet at broadband speeds almost anywhere in the city. It's particularly useful when I'm on campus, so I can avoid the dog-slow UCT internet connection.

Problem is, I'd like to stay connected to the UCT network as well so that I don't use up my precious\* data bundle for UCT services, and this requires a bit of custom routing magic. So I have a script:

    #!/bin/sh
    GATEWAY=137.158.32.97
    route add -net 137.158.0.0/16 gw $GATEWAY
    route add -net 196.24.192.0/24 gw $GATEWAY
    route del default
    route add default ppp0

137.158.0.0/16 and 196.24.192.0/24 are the UCT netblocks, and 137.158.32.97 is the router on the subnet that I'm mostly using at the moment. ppp0 is, of course, the name of the interface associated with the HSDPA connection.

The problems with this script currently are that I have to edit it to change the gateway for each subnet that I'm on, that I have to run it manually each time I connect, and that it doesn't restore the original routing when I disconnect. The first and third problems should be reasonably easy to solve, but the second will probably require that I dig into the mysterious world of NetworkManager. *(Cue dramatic music.)*

\*It's ourssss, my preciousss... they wants to take it from us, the nasssty Vodacom...

**Update:** On the old blog, Simeon from ICTS pointed out to me that I was using the wrong IP ranges for UCT, so I've fixed that. He also pointed out that simultaneously connecting a host to the UCT LAN and directly to the internet is forbidden by university policy.
