require "colorcode_convert_rgb"
require "thor"

module StrConvertUtils
  class CLI < Thor
    # desc "camelize {snake_case_string}", "convert {snake_case_string} to {camelCaseString}"
    def to_ints(hex)
      r, g, b = hex[1..2], hex[3..4], hex[5..6]
      [r, g, b].map (&:hex)
    end
  end
end
