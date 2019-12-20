def array_flatten(array, result=[])
    array.each do |item|
        if item.kind_of?(Array)
            array_flatten(item, result)
        else
            result.push(item)
        end
    end
    return result
end
