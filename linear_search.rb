def linear_search(item, array)
  i = 0
  while i <= array.length - 1
    if array[i] == item
      return i
    else
      i += 1
    end
  end
  return nil
end

def global_linear_search(item, array)
  indexes_of_matches = []
  i = 0
  while i < array.length - 1
    if array[i] == item
      indexes_of_matches.push(i)
      i += 1
    else
      i += 1
    end
  end
  return indexes_of_matches
end


