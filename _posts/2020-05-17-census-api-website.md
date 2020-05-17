---
layout: post
title: Census API and website updates
---

Since 2013, [a website I developed](https://census2011.adrianfrith.com/) has provided information on places from the South African National Census of 2011. Recently I've developed a [GraphQL](https://graphql.org/) API to make that data available to other developers. In parallel with this API development, I've also added some extra data, and made some changes to the website. Read on for more details.

*The usual disclaimer for census data: [Stats SA is acknowledged as the source of the basic data, while the application and analysis result from my own processing of the data.](http://www.statssa.gov.za/?page_id=425)*

## Added data

The information on my site previously only went down the subplace level; subplaces correspond to suburbs or villages. I've now added data from the small area layer, which is the most detailed publically-available census data. There are 84,907 small areas, with an average population about 600. Small areas don't have names, so naturally you can't find them from the name search. On the website you can get to them by finding a subplace and then choosing a small area from there. In the API, you can find a small area by code, as a child of a subplace, or by using the coordinate search.

I've added the age breakdown for all places (alongside the existing date for gender, population group, and first language) and I'm in the process of adding some more variables.

## Website changes

While developing the API I rewrote the website frontend. It's now a React app which uses the new API to fetch the data it displays. The app is isomorphic using [Razzle](https://github.com/jaredpalmer/razzle), which means that when you first load the site it's rendered on my server (just like the old site) but after that it fetches only the data it needs without a page reload.

I've replaced the map that's displayed for each place: it now uses [Mapbox GL](https://docs.mapbox.com/mapbox-gl-js/overview/), and the data to draw the place boundaries is provided by way of simplified vector tiles, rather than full-resolution GeoJSON. This means that the map should load much faster, especially for larger places like [provinces](https://census2011.adrianfrith.com/place/1). Another blog post is coming in which I go into more detail on the vector tile generation.

I've also added charts for each of the demographic variables (gender, age, etc.) to make them easier to comprehend, and hidden the detailed tables behind a click-to-show button.

## The API

The API is available by `POST` to `https://census-api.frith.dev/graphql` with a GraphQL query in the body. Most requests to the API will use the `places` query, which allows you to find places by name, by type (province, municipality, main place, subplace, etc.), by geographical coordinates, or some combination of these. Full details on how to use the API can be found [in the GitHub repository](https://github.com/afrith/census-graphql-api/).
