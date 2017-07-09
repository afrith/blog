---
layout: post
title: Follow-up - geometric median centres of population
image: images/geometric-medians-60dpi.png
---

My post yesterday [discussed the mean centres of population of South Africa and its provinces](/centres-of-population/). The mean centre is (relatively) easy to calculate, but it may not be the most useful type of population centre. It is essentially an arithmetic mean, which means that outliers can have a massive effect on the centre. It minimizes the average *square* of distance from the centre, not the average distance from the centre. The centre that *does* minimize the average distance is called the [geometric median](http://en.wikipedia.org/wiki/Geometric_median), and it is not quite so simple to calculate, since there is no closed form solution. But it can be done!

##Methodology

Finding the geometric median uses an iterative method known as Weiszfeld's algorithm, which is described in [section 2.2 here](http://www.or.uni-bonn.de/~vygen/files/fl.pdf) (amongst many other places). As before, the calculations were performed using a PostGIS spatial database with the small area layer from Census 2011. The code implementing Weiszfeld's algorithm is in [this GitHub repository](https://github.com/afrith/geometric-median); it is a naive implementation but sufficient for this purpose.

##Results

<div style="float:right;width:300px;padding:5px;">
<a href="/images/geometric-medians-150dpi.png" target="_blank"><img src="/images/geometric-medians-60dpi.png" width="300" height="263" /></a>
<i><small>Mean and geometric median centres of population. Click to expand.</small></i>
</div>


The national geometric median centre of population is at [26.84307°S 28.23545°E](http://www.google.co.za/maps/place/-26.84307,28.23545/@-26.84307,28.23545,10z/), on Bezuidenhoutsberg just north of Vaal Marina on the Vaal Dam. This point is 75km south of the Johannesburg CBD and very close to the tripoint of Gauteng, Mpumalanga and the Free State. It is 165km north (and a bit east) of the mean centre of population.

The provincial geometric medians are:

* **Eastern Cape**: [32.16487°S 27.86171°E](http://www.google.co.za/maps/place/-32.16487,27.86171/@-32.16487,27.86171,10z/) - Sigingqini village in the former Transkei, 90km north of East London. 25km north-east of the mean centre.
* **Free State**: [28.33606°S 27.06762°E](http://www.google.co.za/maps/place/-28.33606,27.06762/@-28.33606,27.06762,10z/) - on Helpmekaar farm just off the N1 highway between Winburg and Ventersburg, 120km north-east of Bloemfontein. 15km north-west of the mean centre.
* **Gauteng**: [26.14121°S 28.06846°E](http://www.google.co.za/maps/place/-26.14121,28.06846/@-26.14121,28.06846,10z/) - in Abbotsford, near the M1 freeway, 7km north of Johannesburg CBD. 4km south of the mean centre.
* **KwaZulu-Natal**: [29.60336°S 30.85128°E](http://www.google.co.za/maps/place/-29.60336,30.85128/@-29.60336,30.85128,10z/) - Upper Mantungwa village below Nanda Hill, 30km north-west of Durban CBD. 40km south of the mean centre.
* **Limpopo**: [23.82932°S 29.83916°E](http://www.google.co.za/maps/place/-23.82932,29.83916/@-23.82932,29.83916,10z/) - Mohlatsweng village, 35 km east of Polokwane. 3km east of the mean centre.
* **Mpumalanga**: [25.73029°S 30.20358°E](http://www.google.co.za/maps/place/-25.73029,30.20358/@-25.73029,30.20358,10z/) - on Dalmanutha farm near Machadodorp, 80 km west of Nelspruit and 100 km east of Witbank. Less than 1km from the mean centre.
* **North West**: [26.01753°S 26.70463°E](http://www.google.co.za/maps/place/-26.01753,26.70463/@-26.01753,26.70463,10z/) - on Skaapplaas farm, 65km south-west of Rustenburg and 100km east of Mahikeng.
* **Northern Cape**: [28.47446°S 23.63121°E](http://www.google.co.za/maps/place/-28.47446,23.63121/@-28.47446,23.63121,10z/) - on Nooitgedacht farm just outside Papkuil, 110km west of Kimberley. 65kim north-east of the mean centre.
* **Western Cape**: [33.96004°S 18.65801°E](http://www.google.co.za/maps/place/-33.96004,18.65801/@-33.96004,18.65801,10z/) - in Blackheath, just off the R300 freeway, 20km east of Cape Town CBD. 45km west of the mean centre.
