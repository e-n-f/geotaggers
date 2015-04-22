#sfsmallerlistsort, #geotaggers, #geotaggers15pfloc, #geotaggers15pflo {
  line-width: .08; 
    
  [zoom <= 22] { line-width: 7.938; }
  [zoom <= 21] { line-width: 4.763; }
  [zoom <= 20] { line-width: 2.858; }
  [zoom <= 19] { line-width: 1.715; }
  [zoom <= 18] { line-width: 1.029; }
  [zoom <= 17] { line-width: 0.617; }
  [zoom <= 16] { line-width: 0.370; }
  [zoom <= 15] { line-width: 0.222; }
  [zoom <= 14] { line-width: 0.133; }
  [zoom <= 13] { line-width: 0.080; }
    
  [zoom <= 6] { line-width: 0.133; }
  [zoom <= 5] { line-width: 0.222; }
  [zoom <= 4] { line-width: 0.370; }
  [zoom <= 3] { line-width: 0.617; }
  [zoom <= 2] { line-width: 1.029; }
  [zoom <= 1] { line-width: 1.715; }
  [zoom <= 0] { line-width: 2.858; }
 
  line-opacity: 1;
  
  [zoom >= 9] {
    [dist > 1500] { line-opacity: .9; }
    [dist > 3000] { line-opacity: .8; }
    [dist > 4500] { line-opacity: .7; }
    [dist > 6000] { line-opacity: .6; }
    [dist > 7500] { line-opacity: .5; }
    [dist > 9000] { line-opacity: .4; }
    [dist > 10500] { line-opacity: .3; }
    [dist > 12000] { line-opacity: .2; }
    [dist > 13500] { line-opacity: .1; }
    [dist > 15000] { line-opacity: .0; }
  }

  [speed >= 7] { line-color: #f40a0a; }
  [speed >= 19] { line-color: #5b5bff; }
  [speed >= 43] { line-color: #2ded23; }
}

// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Mark SC Offc Pro Black';

// Common Colors //

@land: #FFf;
@water: #fff;

Map {
  background-color: @land;
}

#water {
  polygon-fill: @water;
}

// Roads & Railways //

#tunnel { opacity: 0.5; }

#road,
#tunnel,
#bridge, #waterway, #water {
  line-color: #990;
  line-width: 0.169;
  
  /* was using 0.6 rate */
  [zoom <= 22] { line-width: 3.995; }
  [zoom <= 21] { line-width: 2.997; }
  [zoom <= 20] { line-width: 2.247; }
  [zoom <= 19] { line-width: 1.686; }
  [zoom <= 18] { line-width: 1.264; }
  [zoom <= 17] { line-width: 0.948; }
  [zoom <= 16] { line-width: 0.711; }
  [zoom <= 15] { line-width: 0.533; }
  [zoom <= 14] { line-width: 0.400; }
  [zoom <= 13] { line-width: 0.300; }
  [zoom <= 12] { line-width: 0.225; }
  [zoom <= 11] { line-width: 0.169; }
  
  [zoom <= 4] { line-width: 0.225; }
  [zoom <= 3] { line-width: 0.300; }
  [zoom <= 2] { line-width: 0.400; }
  [zoom <= 1] { line-width: 0.533; }
  [zoom <= 0] { line-width: 0.711; }
  
  [type = 'footway'] { line-width: 0; }
}

#place_label[localrank<=2] {
  [type='city'][zoom<=9] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-transform: uppercase;
    text-fill: #444;
    text-size: 10;
    text-opacity: .6;
    text-dy: 30;
    [zoom <= 8] { text-dy: 20; }
    [zoom <= 7] { text-dy: 10; }
    [zoom <= 6] { text-dy: 5; }
  }
}
  