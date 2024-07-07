---
layout: post
title: Monitoring a Victron MultiPlus inverter with Grafana
---

Like every South African I have been suffering from Eskom's loadshedding — for my foreign readers, rolling blackouts because the electricity utility can't generate enough. I do however have the good fortune to be able to afford a battery backup system to tide me over the blackouts. To be specific, I am now the owner of a [Victron MultiPlus 500VA inverter](https://www.victronenergy.com/inverters-chargers/multi-500-va) and a [BlueNova 570Wh LiFePO4 battery](https://www.bluenova.co.za/mobile-power-series/).

<img src="/images/victron.jpeg" alt="A Victron MultiPlus inverter mounted on top of a box containing a battery, with various attached wires." />

This system lets me power my fibre CPE, router, network switch, WiFi AP, NAS server, and several LED lights through a full 4.5-hour double loadshedding. I can also charge my laptop or cellphone if necessary, and even run my TV for a time. It has been a massive improvement to my quality of life in the high stages of loadshedding we have been suffering lately.

Naturally, once the system was set up, my thoughts turned to the 