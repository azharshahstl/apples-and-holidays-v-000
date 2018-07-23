require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1] 
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter].each do |key,value|
    value.push("Balloons")
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
    holiday_hash[:spring].each do |key,index|
    index.push(supply)
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  
  holiday_hash
  
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |key,value|
    #binding.pry
    winter_supplies << value
  end
winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season,value_hash|
    
    capitalized_season = season.to_s.capitalize! + ":" 
   # binding.pry
    
    puts capitalized_season
    
    value_hash.each do |holiday, supplies|
    
      holiday_name_as_array = holiday.to_s.split
      supplies_to_string = supplies.join(", ")
      
        holiday_name_as_array.each do |name|
        name = name.capitalize!
        end
        
        puts "  " + holiday_name_as_array.join(" ") + ": " + supplies_to_string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ
  
  bbq_holidays = []
  holiday_hash.each do |season, value_hash|
    value_hash.each do |key, supply|
       if supply.include?("BBQ")
         bbq_holidays << key
       end
    end
  end
bbq_holidays
end







