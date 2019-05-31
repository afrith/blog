---
layout: post
title: Linguistic diversity map of South Africa
image: images/linguistic-diversity.png
---

The [linguistic diversity index](https://en.wikipedia.org/wiki/Linguistic_diversity_index) measures the probability that two people selected at random from a population speak different home languages. The map below, which I produced, depicts the linguistic diversity index calculated on a 10-kilometre-wide hexagonal grid across South Africa.
<figure>
<a href="/images/linguistic-diversity.png" target="_blank"><img src="/images/linguistic-diversity-thumb.png" alt="A map of South Africa showing the linguistic diversity index calculated on a 10-kilometre-wide hexagonal grid" title="Linguistic diversity map of South Africa" /></a>
<figcaption>Linguistic diversity; click to enlarge</figcaption>
</figure>

For comparison, here are maps of the majority home language and population density calculated for the same hexagons.

<div class="imagepair">
<figure>
<a href="/images/majority-language.png" target="_blank"><img src="/images/majority-language-thumb.png" alt="A map of South Africa showing the majority language calculated on a 10-kilometre-wide hexagonal grid" title="Majority language map of South Africa" /></a>
<figcaption>Majority home language</figcaption>
</figure>
</div>

<div class="imagepair">
<figure>
<a href="/images/population-density.png" target="_blank"><img src="/images/population-density-thumb.png" alt="A map of South Africa showing the population density calculated on a 10-kilometre-wide hexagonal grid" title="Population density map of South Africa" /></a>
<figcaption>Population density</figcaption>
</figure>
</div>

The map is based on the answers given to the home language question in the 2011 census. The most detailed dataset published from the census was the "Small Area Layer", which gives aggregated data for "small areas" of about 150 households. Using [PostGIS](https://postgis.net/) I constructed a grid of 10-kilometre-wide hexagons covering South Africa. I then calculated the language data for each hexagon from the small areas that fall within that hexagon. Where a small area falls across multiple hexagons I divided its population proportionally.

The index is calculated according to the "monolingual nonweighted method" formula from Joseph Greenberg's paper ["The Measurement of Linguistic Diversity"](https://www.jstor.org/stable/410659). Assume there are *n* languages, and let *p<sub>i</sub>* be the fraction of the population that speak language *i*. (So *p<sub>1</sub> + p<sub>2</sub> + ⋯ + p<sub>n</sub> = 1*.) Then the index is given by *1 − (p<sub>1</sub><sup>2</sup> + p<sub>2</sub><sup>2</sup> + ⋯ + p<sub>n</sub><sup>2</sup>)*, i.e. one minus the sum of the squares of the fractions.

An interesting feature to note is that the former ["homelands"](https://en.wikipedia.org/wiki/Bantustan) — ethnically segregated territories under the apartheid system — are closely correlated with low linguistic diversity. Below is the first map with the homeland boundaries overlaid.

<figure>
<a href="/images/linguistic-diversity-homelands.png" target="_blank"><img src="/images/linguistic-diversity-homelands-thumb.png" alt="A map of South Africa showing the linguistic diversity index calculated on a 10-kilometre-wide hexagonal grid with former homeland boundaries overlaid" title="Linguistic diversity map of South Africa with homeland boundaries" /></a>
<figcaption>Linguistic diversity and former homelands</figcaption>
</figure>

The code I used to create the hexagonal grid and calculate the linguistic diversity index can be found in [this GitHub repository](https://github.com/afrith/language-diversity-index/tree/master).
