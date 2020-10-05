require "colorcode_convert_rgb"
require "thor"

module ColorcodeConvertRgb
  class CLI < Thor
    desc "to_ints {Hexagonal_color_code}", "Converts a hexadecimal color code to a decimal number."
    def to_ints(hex)
      r, g, b = hex[0..1], hex[2..3], hex[4..5]
      rgb = [r, g, b].map(&:hex)
      puts "RGB is #{rgb}."
    end
  end
end
