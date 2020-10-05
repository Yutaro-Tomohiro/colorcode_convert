require "colorcode_convert_rgb"
require "thor"

module ColorcodeConvertRgb
  class CLI < Thor
    desc "to_ints {Hexagonal_color_code}", "Converts a hexadecimal color code to a decimal number."
    def to_ints(color)
      if color.match(/[a-fA-F0-9]{6}/)
        hex = color
      elsif color.match(/[#][a-fA-F0-9]{6}/)
        hex = color.delete("#")
      else
        return puts 'Please enter the correct code.(e.g. #ffffff or ffffff )'
      end
      r, g, b = hex[0..1], hex[2..3], hex[4..5]
      rgb = [r, g, b].map(&:hex)
      puts "RGB is #{rgb}."
    end
  end
end
