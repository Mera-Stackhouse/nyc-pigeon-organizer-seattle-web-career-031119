def nyc_pigeon_organizer(data)
  hash = {}
  data.each {|key, value|
    key1 = key
    value.each {|key, value|
      key2 = key
      value.each {|element|
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
  hash
end