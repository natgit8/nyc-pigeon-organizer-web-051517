def nyc_pigeon_organizer(data)
  #1. create new hash
   new_hash = {}
   #2.loop through the facts with the values of those facts
   data.each do |facts, values|
     #3.loop through the values with the pigeon names
     values.each do |value, pigeon_name|
       #4.loop through the array of names and push them into the new hash (the value to string)
       pigeon_name.each do |pigeon|
         new_hash[pigeon] ||= {}
         new_hash[pigeon][facts] ||= []
         new_hash[pigeon][facts] << value.to_s
       end
     end
   end
   new_hash
end
