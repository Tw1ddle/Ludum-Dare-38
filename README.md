# Ludum Dare 38

My unfinished entry for Ludum Dare 38, the world's largest online game jam.

### About

A HTML5/WebGL game written in Haxe, made in 36 hours during the Ludum Dare 38 Jam.

The theme was "A Small World", so I took a world map and pruned it down, and used [Geometrize](https://github.com/Tw1ddle/geometrize-haxe) library to create a set of shapes approximating the map image, which I rendered as a collection of 3D cylinders.

### Screenshots

![Screenshot1](https://github.com/Tw1ddle/ludum-dare-38/blob/master/screenshots/screenshot0.png?raw=true "Screenshot 1")

![Screenshot2](https://github.com/Tw1ddle/ludum-dare-38/blob/master/screenshots/screenshot1.png?raw=true "Screenshot 2")

### Dev Log
#### April 21st
 * Set up a repository and empty project.

#### April 22nd
 * Created a world map by geometrizing a sliced-up NASA map.
 * Got simple rendering, tweens, sky, clouds and ocean tiles working. Enumerated the TODOs to make a playable game.
 
#### April 23rd
 * Realized there were too many TODOs and other stuff to take priority, so let it go!

### Credits

This project is written using the [Haxe](https://haxe.org/) programming language and depends on:

* [three.js](https://github.com/mrdoob/three.js) for rendering.
* Haxiomic's [three.js](https://github.com/haxiomic/three-js-haxe-externs) Haxe externs.
* Joshua Granick's [actuate](https://lib.haxe.org/p/actuate) tweening library.
* Massive Interactive's [msignal](https://lib.haxe.org/p/msignal/) signals library.
* My [geometrize](https://github.com/Tw1ddle/geometrize-haxe) library.