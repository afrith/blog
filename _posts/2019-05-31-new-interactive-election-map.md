---
layout: post
title: New interactive map of SA election results
image: images/new-election-map.png
excerpt_separator: <!--more-->
---

Five years ago, after the 2014 general election, I built an interactive map of the election results. Since then the state of the technology for web mapping has moved on, so I've developed a completely new version. This new map uses vector tiles for better rendering, includes results for four general elections (2004&ndash;2019), and allows you to drill all the way down to voting district level. [And here it is.](https://elections.adrianfrith.com/)

<figure>
<a href="https://elections.adrianfrith.com/" target="_blank"><img src="/images/new-election-map-screenshot.png" alt="A screenshot of a site titled 'South African Election Results' and showing the results of the 2019 election by ward." /></a>
</figure>
<!--more-->
The map allows you to look at five levels of electoral geography (province, district council, municipality, ward and voting district), and at the national or provincial ballots. There are several colour schemes to choose from: leading party (as seen in the screenshot), turnout percentage, and support levels for five major political parties. If you click or tap on an area on the map, a popup opens with full details of the election result in that area. You can search for an address to zoom to that location. The site is responsive and works on smartphones and tablets (although it may be slow on older devices).

## Technical details

The election result data and the boundaries of the electoral geographies are stored in a [PostgreSQL](https://www.postgresql.org/) database with the [PostGIS](https://postgis.net/) extensions. The map is produced from tiles in the [Mapbox Vector Tile](https://docs.mapbox.com/vector-tiles/specification/) format, which are served by a [Node.js](https://nodejs.org/) service that uses the [TileStrata](https://github.com/naturalatlas/tilestrata) library (slightly modified by me). The service also provides an endpoint to look up the full result details for the popup display.

The website itself is coded in Javascript using [React](https://reactjs.org/) and [react-md](https://react-md.mlaursen.com/). The map uses [Mapbox GL JS](https://docs.mapbox.com/mapbox-gl-js/api/) with the [react-mapbox-gl](http://alex3165.github.io/react-mapbox-gl/) wrapper. The whole lot is deployed on my server using the amazing [Dokku](http://dokku.viewdocs.io/dokku/).

The code is all available on GitHub: [frontend here](https://github.com/afrith/election-map-frontend) and [backend here](https://github.com/afrith/election-map-backend).