# LectureHelper
This r package can download and install in order to help student in STAT 5293:  Statistical Graphics to search, browse and located related materials quickly and efficiently.

## Motivation
The initial motivation of build such a package is to encapsulate lecture notes and build a library inside R for reference. In this way, students can quickly check the potential slides that contains function or notions they need to finish tasks.

## How it works
The package provide a function that can search through the library and located specific texts, and return the relevant lectures and potential pages that they appeared. 

## Challenge
This package heavily rely on another R package, pdfsearch. The search function can correctly identify what pdf documents contain the texts, but perform badly on retrieving the page information.

## Download
Run code below to download

~~~
devtools::install_github("ytyky/LectureHelper")
~~~

## Copyright

The lecture notes are created, distributed and fully owned by Professor Joyce Robbins. You can find her online book at [here](https://edav.info/index.html)

The function are based on R package [pdfsearch](https://github.com/cran/pdfsearch)
