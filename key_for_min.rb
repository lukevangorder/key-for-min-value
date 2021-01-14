# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    if name_hash.length==0
        nil
    else
        keys = name_hash.collect {|key,value| key}
        values = name_hash.collect {|key,value| value}
        lowest_value = values[0]
        values.each do |value|
            if value<lowest_value
                lowest_value=value
            end
        end
        return keys[values.index(lowest_value)]
    end
        
end