module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/is.yaml, data/common_methods.yaml
  #
  # To use the definitions in the file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'path/to/is'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module IS # :nodoc:
    DEFINED_REGIONS = [:is]

    HOLIDAYS_BY_MONTH = {
      5 => [{:mday => 3, :name => "Sjómannadagurinn", :regions => [:is]},
            {:mday => 17, :name => "Lýðveldisdagurinn", :regions => [:is]}],
      0 => [{:function => lambda { |year| easter(year)-48 }, :name => "Bolludagur", :regions => [:is]},
            {:function => lambda { |year| easter(year)-47 }, :name => "Sprengidagur", :regions => [:is]},
            {:function => lambda { |year| easter(year)-46 }, :name => "Öskudagur", :regions => [:is]},
            {:function => lambda { |year| easter(year)-7 }, :name => "Pálmasunnudagur", :regions => [:is]},
            {:function => lambda { |year| easter(year)-3 }, :name => "Skírdagur", :regions => [:is]},
            {:function => lambda { |year| easter(year)-2 }, :name => "Föstudaginn langi", :regions => [:is]},
            {:function => lambda { |year| easter(year) }, :name => "Páskadagur", :regions => [:is]},
            {:function => lambda { |year| easter(year)+1 }, :name => "Annar í páskum", :regions => [:is]},
            {:function => lambda { |year| easter(year)+26 }, :name => "Store Bededag", :regions => [:is]},
            {:function => lambda { |year| easter(year)+40 }, :name => "Kristi Himmelfartsdag", :regions => [:is, :is]},
            {:function => lambda { |year| easter(year)+49 }, :name => "2. Pinsedag", :regions => [:is]},
            {:function => lambda { |year| easter(year)+50 }, :name => "Pinsedag", :regions => [:is]}],
      11 => [{:mday => 16, :name => "Dagur íslenskrar tungu", :regions => [:is]}],
      1 => [{:mday => 1, :name => "Nýársdagur", :regions => [:is]},
            {:mday => 6, :name => "Þrettándinn", :regions => [:is]},
            {:mday => 19, :name => "Bóndadagur", :regions => [:is]}],
      12 => [{:mday => 24, :name => "Jól", :regions => [:is]},
            {:mday => 25, :name => "Jól", :regions => [:is]},
            {:mday => 26, :name => "Jól", :regions => [:is]},
            {:mday => 31, :name => "Gamlárskvöld", :regions => [:is]}],
      2 => [{:mday => 18, :name => "Konudagur", :regions => [:is]}],
      8 => [{:wday => 1, :week => 1, :name => "Frídagur verslunarmanna", :regions => [:is]}]
    }

# Iceland: first day of summer (Thursday after 18 April)
def self.is_sumardagurinn_fyrsti(year)
  date = Date.civil(year,4,18)
  if date.wday < 4
    date += (4 - date.wday)
  else date
    date += (11 - date.wday)
  end
  date
end

# Get the date of Easter in a given year.
#
# +year+ must be a valid Gregorian year.
#
# Returns a Date object.
#--
# from http://snippets.dzone.com/posts/show/765
# TODO: check year to ensure Gregorian
def self.easter(year)
  y = year
  a = y % 19
  b = y / 100
  c = y % 100
  d = b / 4
  e = b % 4
  f = (b + 8) / 25
  g = (b - f + 1) / 3
  h = (19 * a + b - d - g + 15) % 30
  i = c / 4
  k = c % 4
  l = (32 + 2 * e + 2 * i - h - k) % 7
  m = (a + 11 * h + 22 * l) / 451
  month = (h + l - 7 * m + 114) / 31
  day = ((h + l - 7 * m + 114) % 31) + 1
  Date.civil(year, month, day)
end



  end
end

Holidays.merge_defs(Holidays::IS::DEFINED_REGIONS, Holidays::IS::HOLIDAYS_BY_MONTH)