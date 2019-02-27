require "pry"

data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }
      
def nyc_pigeon_organizer(data)
  hash = {}
  data.each {|key, value|
    key1 = key
    
    value.each {|key, value|
      key2 = key
      
      value.each {|element|
      binding.pry
        if !hash.has_key?(value)
          hash[value] = {}
        end
        if !hash[value].has_key?(key1)
          hash[value][key1] = []
          hash[value][key1] << "#{key2}"
        else
          hash[value][key1] << "#{key2}"
        end
      }
    }
  }
  puts hash
end

nyc_pigeon_organizer(data)