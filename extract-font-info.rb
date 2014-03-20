require 'rubygems'
require 'bundler'

Bundler.require

file = ARGV[0] || 'demo.psd'

psd = PSD.new(file, parse_layer_images: true)

psd.parse!

psd.tree.descendant_layers.each do |child|
  if child.text
    # puts child.text
    puts "Found text layer — " + child.text[:value]
    puts "Font name:              " + child.text[:font][:name]
    puts "Font size(s) in points: " + child.text[:font][:sizes].join(",")
    puts "Font color(s) in RGBA:  " + child.text[:font][:colors].join(",")
    puts "\n"
  end
end