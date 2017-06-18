array = ['bob','james','james','susan','susan','susan']

def count (array)
  count = {}
  array.each do |word|
    if count[word.to_sym]
      count[word.to_sym] += 1
    else
      count[word.to_sym] = 1
    end
  end
  count
end

def count_improved (array)
  count = Hash.new(0)
  array.each do |word|
    count[word.to_sym] += 1
  end
  count
end


puts count(array)