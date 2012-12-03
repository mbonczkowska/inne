# Convert & ImageMagick

Obrazki z http://octodex.github.com/.

Opis [geometry](http://www.imagemagick.org/script/command-line-processing.php#geometry)

Convert, przykłady użycia:

*  http://www.imagemagick.org/script/convert.php

## Przykłady

Generujemy obrazek w podanym kolorze:

    convert -size 60x60 canvas:'#B9121B' blank.png  # cherry cheescake

Przykłady użycia programu *convert*:

    convert -resize '800x300\!' -crop '800x300+0+0' 404-888x354.jpg 404-github.jpg
    convert 404-888x354 -resize '800x300!' -crop '800x300+0+0' -quantize GRAY -colors 256 -contrast 404-github-grayscale.jpg

Resize (*maximum*):

    convert 404-github.jpg -resize 100x100 100x100.jpg  #=> identify: 100x38

Skąd takie wymiary:

    100 / 800 * 300 = 37.5

Resize (*minimum*):

    convert 404-github-grayscale.jpg -resize '100x100^' 100x100caret.jpg  #=> identify: 267x100

Skąd takie wymiary:

    100 / 300 * 800 = 266.67

Composite:

    convert -size 267x100 canvas:'#046380' blue.png
    convert blue.png \( 100x100caret.jpg -negate \) -compose copy-opacity -composite composite.png
    convert -size 267x100 canvas:'#046380' \( 100x100caret.jpg -negate \) -compose copy-opacity -composite composite.png
