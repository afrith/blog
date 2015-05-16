---
layout: post
title: Centres of population of South Africa
---

***Follow-up:*** *a subsequent post [describes the geometric median centre of population](/geometric-mean-centres/), which is some respects a more sensible definition than the mean centre of population described here.*

<div style="float:right;width:300px;padding:5px;">
<a href="/images/mean-centres-150dpi.png" target="_blank"><img src="/images/mean-centres-60dpi.png" width="300" height="263" /></a>
<i><small>National and provincial centres of population, with population density. Click to expand.</small></i>
</div>

The [centre of population](http://en.wikipedia.org/wiki/Center_of_population) is a point that represents an "average" location of the people in a country or other area; exactly what that "average" is depends on the way the centre is calculated. As far as I can tell, nobody has calculated a centre of population of South Africa; at least nobody has published it anywhere that Google can find. So I've calculated one myself, both out of interest and also in case anyone else finds it useful. I also calculated the centre of population of each province.

##Methodology

The method of calculation is that described in the US Census Bureau publication *[Centers of Population Computation for the United States](http://www.census.gov/geo/reference/pdfs/cenpop2010/COP2010_documentation.pdf)*. This method produces a mean centre of population, and adjusts for the fact that the distance between meridians (lines of longitude) decreases with latitude. The calculations were performed in a PostGIS spatial database using the Census 2011 small area layer, the most detailed level of population data available fron the census.

##Results

The national centre of population is located at [28.28430°S 27.70690°E](http://www.google.co.za/maps/place/-28.28430,27.70690/@-28.28430,27.70690,10z/), at the foot of Ghwarriekop just outside the town of Senekal in the Free State. (If we ever decide to move all the branches of national government to one place, perhaps Senekal should be the site.) The population centre is substantially further east than the geographic centre of South Africa because South Africa is much more densely populated in the east than the west, as can be seen from the map above.

The provincial centres of population are:

* **Eastern Cape:** [32.25099°S 27.60710°E](http://www.google.co.za/maps/place/-32.25099,27.60710/@-32.25099,27.60710,10z/) - at Dratini village on the Great Kei River, 90 km north of East London.
* **Free State:** [28.39131°S 27.21450°E](http://www.google.co.za/maps/place/-28.39131,27.21450/@-28.39131,27.21450,10z/) - on Eendracht farm between Winburg and Senekal, 120 km north-east of Bloemfontein.
* **Gauteng:** [26.10533°S 28.07713°E](http://www.google.co.za/maps/place/-26.10533,28.07713/@-26.10533,28.07713,10z/) - in Sandton, on the M1 freeway where it passes Innesfree Park.
* **KwaZulu-Natal:** [29.22932°S 30.83280°E](http://www.google.co.za/maps/place/-29.22932,30.83280/@-29.22932,30.83280,10z/) - at KwaNjengabantu in the Umvoti River valley, 70 km north of Durban.
* **Limpopo:** [23.82332°S 29.80877°E](http://www.google.co.za/maps/place/-23.82332,29.80877/@-23.82332,29.80877,10z/) - between Makgwareng and Mohlatsweng villages, 35 km east of Polokwane.
* **Mpumalanga:** [25.72471°S 30.19713°E](http://www.google.co.za/maps/place/-25.72471,30.19713/@-25.72471,30.19713,10z/) - on Driefontein farm near Machadodorp, 80 km west of Nelspruit and 100 km east of Witbank.
* **North West:** [26.10084°S 26.54186°E](http://www.google.co.za/maps/place/-26.10084,26.54186/@-26.10084,26.54186,10z/) - on the farm Goedvooruitzicht close to the village of Ga-Motlala, 90 km equidistant from Mafikeng, Rustenburg and Klerksdorp.
* **Northern Cape:** [28.69990°S 23.02761°E](http://www.google.co.za/maps/place/-28.69990,23.02761/@-28.69990,23.02761,10z/) - on the farm Onderongeluk near Griekwastad, 170 km west of Kimberley.
* **Western Cape:** [33.84144°S 19.14170°E](http://www.google.co.za/maps/place/-33.84144,19.14170/@-33.84144,19.14170,10z/) - in the Haweqwa Nature Reserve north of Franschhoek, 60 km east of Cape Town.
