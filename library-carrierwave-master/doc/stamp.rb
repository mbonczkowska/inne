# http://railscasts.com/episodes/374-image-manipulation?view=asciicast

require 'RMagick'

include Magick

source = Image.read("404-github-grayscale.jpg").first
source = source.resize_to_fill(800, 300).quantize(256, GRAYColorspace).contrast(true)

#overlay = Image.read("blue_overlay.png").first
#source.composite!(overlay, 0, 0, OverCompositeOp)

colored = Image.new(800, 300) { self.background_color = "#002F2F" }
colored.composite!(source.negate, 0, 0, CopyOpacityCompositeOp)
colored.write("stamp.png")

# more examples:
#   https://github.com/rmagick/rmagick/tree/master/examples
