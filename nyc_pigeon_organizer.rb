def nyc_pigeon_organizer(data)
  hash = {}
  data.each {|key, value|
    key1 = key
    value.each {|key, value|
      key2 = key
      value.each {|element|
        if hash.has_key?(value)
          hash[value][key1] = "#{key2}"
      
  
end