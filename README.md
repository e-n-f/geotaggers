geotaggers
----------

Map style for the [Geotaggers' World Atlas](https://www.mapbox.com/blog/geotaggers-world-atlas/)

What's going on
---------------

I made the vector tiles for this with this pipeline:

    cat grand-unified.list.sort3 | /data2/data/github/geotools/cleanse | /data2/data/github/geotools/plot-motion 2>/dev/null | ./geo2geojson | /data2/data/github/tippecanoe/tippecanoe -pf -pl -po -z13 -r1.5 -f -o geotaggers1.5pflo.mbtiles

using this repository and tools from from [geotools](https://github.com/ericfischer/geotools/)
and [tippecanoe](https://github.com/mapbox/tippecanoe).

The quick walkthrough:

 * <code>grand-unified.list.sort3</code> is a list of photo locations in <code>user date time lat,lon etc</code> format, sorted with <code>sort</code> so that photos from the same person are adjacent, and are sorted in chronological order
 * <code>cleanse</code> strips out points with exact duplicate locations and with near-duplicate locations from the same person
 * <code>plot-motion</code> takes pairs of locations from the same person and calculates the distance and speed between them.
 * <code>geo2geojson</code> (in this repo) converts that format to geojson, and trims out pairs that are too far separated in time, distance, or speed to be meaningful for this visualization.
 * <code>tippecanoe</code> converts geojson into Mapbox vector tiles. The options are:
   * <code>-pf</code>: Don't limit the tiles to 200K features
   * <code>-pl</code>: At low zooms, drop some fraction of lines, not just points
   * <code>-po</code>: Don't reorder features to put ones with the same properties together
   * <code>-z13</code>: Use zoom level 13 as the base
   * <code>-r1.5</code>: Retain 1/1.5 of the features at each lower zoom instead of the usual 1/2.5
   * <code>-f</code>: Force overwrite of old .mbtiles file
