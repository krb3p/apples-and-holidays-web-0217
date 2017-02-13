require 'pry'

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_hash)
    holiday_supplies[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, supplies|
    supplies << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:season] = holiday_name
  holiday_hash[season][holiday_name]= supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
      winter_supplies << supplies
    end
    winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  supplies_list = []
  holiday_hash.each do |season, holidays|
    puts "#{season}:".to_s.capitalize
  holidays.each do |holiday, supplies|
    puts "  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"

    end
    # holiday_names = holiday.keys
    # puts "#{holiday_names}:".to_s`
    # holiday_supplies = holiday.values
    # puts "#{holiday_supplies}".to_s
    # en
end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |holiday, supplies|
      holiday if supplies.include?("BBQ")

      end
  end.flatten.compact

end
