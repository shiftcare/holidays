# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/jp.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'generated_definitions/jp'
  #
  # All the definitions are available at https://github.com/alexdunae/holidays
  module JP # :nodoc:
    def self.defined_regions
      [:jp]
    end

    def self.holidays_by_month
      {
              1 => [{:mday => 1, :name => "元日", :regions => [:jp]},
            {:wday => 1, :week => 2, :name => "成人の日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 1, 1) }, :function_id => "jp_substitute_holiday(year, 1, 1)", :name => "振替休日", :regions => [:jp]}],
      2 => [{:mday => 11, :name => "建国記念日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 2, 11) }, :function_id => "jp_substitute_holiday(year, 2, 11)", :name => "振替休日", :regions => [:jp]}],
      3 => [{:function => lambda { |year| Holidays.jp_vernal_equinox_day(year) }, :function_id => "jp_vernal_equinox_day(year)", :name => "春分の日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(Holidays.jp_vernal_equinox_day(year)) }, :function_id => "jp_substitute_holiday(Holidays.jp_vernal_equinox_day(year))", :name => "振替休日", :regions => [:jp]}],
      4 => [{:mday => 29, :name => "昭和の日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 4, 29) }, :function_id => "jp_substitute_holiday(year, 4, 29)", :name => "振替休日", :regions => [:jp]}],
      5 => [{:mday => 3, :name => "憲法記念日", :regions => [:jp]},
            {:mday => 4, :name => "みどりの日", :regions => [:jp]},
            {:mday => 5, :name => "こどもの日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 5, 3) }, :function_id => "jp_substitute_holiday(year, 5, 3)", :name => "振替休日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 5, 4) }, :function_id => "jp_substitute_holiday(year, 5, 4)", :name => "振替休日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 5, 5) }, :function_id => "jp_substitute_holiday(year, 5, 5)", :name => "振替休日", :regions => [:jp]}],
      7 => [{:wday => 1, :week => 3, :name => "海の日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 7, Holidays.calculate_day_of_month(year, 7, 3, 1)) }, :function_id => "jp_substitute_holiday(year, 7, Holidays.calculate_day_of_month(year, 7, 3, 1))", :name => "振替休日", :regions => [:jp]}],
      9 => [{:wday => 1, :week => 3, :name => "敬老の日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 9, Holidays.calculate_day_of_month(year, 9, 3, 1)) }, :function_id => "jp_substitute_holiday(year, 9, Holidays.calculate_day_of_month(year, 9, 3, 1))", :name => "振替休日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_citizons_holiday(year) }, :function_id => "jp_citizons_holiday(year)", :name => "国民の休日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_national_culture_day(year) }, :function_id => "jp_national_culture_day(year)", :name => "秋分の日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(Holidays.jp_national_culture_day(year)) }, :function_id => "jp_substitute_holiday(Holidays.jp_national_culture_day(year))", :name => "振替休日", :regions => [:jp]}],
      10 => [{:wday => 1, :week => 2, :name => "体育の日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 10, Holidays.calculate_day_of_month(year, 10, 2, 1)) }, :function_id => "jp_substitute_holiday(year, 10, Holidays.calculate_day_of_month(year, 10, 2, 1))", :name => "振替休日", :regions => [:jp]}],
      11 => [{:mday => 3, :name => "文化の日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 11, 3) }, :function_id => "jp_substitute_holiday(year, 11, 3)", :name => "振替休日", :regions => [:jp]},
            {:mday => 23, :name => "勤労感謝の日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 11, 23) }, :function_id => "jp_substitute_holiday(year, 11, 23)", :name => "振替休日", :regions => [:jp]}],
      12 => [{:mday => 23, :name => "天皇誕生日", :regions => [:jp]},
            {:function => lambda { |year| Holidays.jp_substitute_holiday(year, 12, 23) }, :function_id => "jp_substitute_holiday(year, 12, 23)", :name => "振替休日", :regions => [:jp]}]
      }
    end
  end

def self.jp_vernal_equinox_day(year)
  day =
    case year
    when 1851..1899
      19.8277
    when 1900..1979
      20.8357
    when 1980..2099
      20.8431
    when 2100..2150
      21.8510
    else
      raise IndexError.new("Out of range")
    end
  day += 0.242194 * (year - 1980) - ((year - 1980)/4).floor
  day = day.floor
  Date.civil(year, 3, day)
end


def self.jp_national_culture_day(year)
  day =
    case year
    when 1851..1899
      22.2588
    when 1900..1979
      23.2588
    when 1980..2099
      23.2488
    when 2100..2150
      24.2488
    else
      raise IndexError.new("Out of range")
    end
  day += 0.242194 * (year - 1980) - ((year - 1980)/4).floor
  day = day.floor
  Date.civil(year, 9, day)
end


def self.jp_citizons_holiday(year)
  year < 2003 and return nil
  ncd = Holidays.jp_national_culture_day(year)
  if ncd.wday == 3
    ncd - 1
  else
    nil
  end
end


def self.jp_substitute_holiday(*date)
  date = date[0].kind_of?(Date) ? date.first : Date.civil(*date)
  date.wday == 0 ? Holidays.jp_next_weekday(date+1) : nil
end


def self.jp_next_weekday(date)
  is_holiday = Holidays::JP.holidays_by_month[date.month].any? do |holiday|
    holiday[:mday] == date.day
  end
  date.wday == 0 || is_holiday ? Holidays.jp_next_weekday(date+1) : date
end



end

Holidays.merge_defs(Holidays::JP.defined_regions, Holidays::JP.holidays_by_month)