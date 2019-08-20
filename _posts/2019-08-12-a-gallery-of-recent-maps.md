---
layout: post
title: A gallery of recent maps
image: images/mesozone-density-change-1996-2016-thumb.png
---

This post presents a selection of maps I have produced in the last few weeks. If you follow me [on Twitter](https://twitter.com/adrianfrith/) or [on Reddit](https://www.reddit.com/user/ctnguy/posts/) you will have seen most of these already. All the images below are clickable thumbnails which link to a full-size version.

## Electrification

This animated map shows, per municipality in South Africa, over a 20 year period, the percentage of households that use electricity as their main energy source for lighting. (As distinct from heating or cooking &mdash; households which have electric light may still use gas or wood for other purposes.)

<figure>
<a href="/images/electrification-animated.gif" target="_blank"><img src="/images/electrification-animated-thumb.gif" alt="Animated GIF of household electrification level per municipality over time." /></a>
<figcaption>Household electrification level per municipality over time</figcaption>
</figure>

The data comes from the 1996, 2001 and 2011 Censuses and the 2007 and 2016 Community Surveys, all carried out by [Stats SA](http://www.statssa.gov.za/) and accessible through its [SuperWeb](http://superweb.statssa.gov.za/webapi) platform. I have collected the data that these maps are based on [into a CSV here](https://stuff.adrianfrith.com/sa-electrification-by-muni.csv). As municipal boundaries change from time to time, all the data has been normalised to the municipal boundaries as of 2011, [the shapefile of which can be downloaded here](https://stuff.adrianfrith.com/LocalMunicipalities2011.zip).

A note: I don't think there was actually a big regression from 2007 to 2011; rather I suspect the Community Survey 2007 was inaccurate, especially in the sparsely-populated western part of the country where the sample would have been very small.

## Overstrand land ownership

This map shows state, municipal and private land ownership in the [Overstrand Municipality](https://en.wikipedia.org/wiki/Overstrand_Local_Municipality), which lies along the coast southeast of Cape Town. It also shows the distinction between town erven and farm portions.

<figure>
<a href="/images/overstrand-land-ownership.png" target="_blank"><img src="/images/overstrand-land-ownership-thumb.png" alt="Map showing ownership of land in the Overstrand Local Municipality, distinguishing between towns and farms, and between state, municipal and private land." /></a>
<figcaption>Ownership of land in the Overstrand Local Municipality</figcaption>
</figure>

The geographic data for land parcels comes from the Surveyor-General's Office [via PlanetGIS](https://planetgis.co.za/browsemap.php?id=41), while the land ownership data comes from the Overstrand Municipality's [valuation register](https://www.overstrand.gov.za/en/documents/strategic-documents/property-valuations/6298-register-of-properties-2019). The background terrain tiles are Stamen Design's [Terrain Background](http://maps.stamen.com/terrain-background/) (under CC-BY-3.0 license). I used PostGIS to wrangle the data, which required substantial cleaning to match up the parcel shapefile with the valuation roll.


## Change in population density

This map shows the change in population density in South Africa over 20 years (1996 to 2016). The biggest trend this map shows is the rural-to-urban migration, with all the major cities showing a big increase in population. But across the rural parts of the country there is substantial variation; some areas like the Free State have a uniform decrease, while many of the former homeland areas show an increase in population (probably though births not migration). The data comes from the [SA CSIR MesoZone 2018v1 Dataset](http://stepsa.org/socio_econ.html).

<figure>
<a href="/images/mesozone-density-change-1996-2016.png" target="_blank"><img src="/images/mesozone-density-change-1996-2016-thumb.png" alt="Map showing the change in population density in South Africa from 1996 to 2016 according to CSIR Mesozone." /></a>
<figcaption>Change in population density in South Africa, 1996&ndash;2016</figcaption>
</figure>

For comparison, here is the population density in 2016.

<figure>
<a href="/images/mesozone-density-2016.png" target="_blank"><img src="/images/mesozone-density-2016-thumb.png" alt="Map showing the population density in South Africa in 2016 according to CSIR Mesozone." /></a>
<figcaption>Population density in South Africa, 2016</figcaption>
</figure>

## Dam capacity

This map shows the capacity of South Africa's dams and reservoirs; each circle is sized in proportion to the storage capacity of the dam when full. The data comes from the [Dam Safety Office](https://www.dwa.gov.za/DSO/Publications.aspx) of the Department of Water and Sanitation.

<figure>
<a href="/images/dam-capacity.png" target="_blank"><img src="/images/dam-capacity-thumb.png" alt="Map showing the capacity of South Africa's dams as circles sized proportionally." /></a>
<figcaption>Dam capacity in South Africa</figcaption>
</figure>

I was also requested to produce a map for the Western Cape.

<figure>
<a href="/images/dam-capacity-wc.png" target="_blank"><img src="/images/dam-capacity-wc-thumb.png" alt="Map showing the capacity of the Western Cape's dams as circles sized proportionally." /></a>
<figcaption>Dam capacity in the Western Cape</figcaption>
</figure>
