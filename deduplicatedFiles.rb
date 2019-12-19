def calculateDuplicatedFiles()
  numberOfFiles = gets.chomp.to_i

  while numberOfFiles > 0
    calculateCase numberOfFiles
    numberOfFiles = gets.chomp.to_i
  end

end

def calculateCase numberOfFiles
  result = Hash.new
  while numberOfFiles > 0
      line = gets.chomp
      hash = getHashValue line
      if result.key?(hash)
        result[hash][0] += 1
      else
        result[hash] = [1, Hash.new]
      end
      if result[hash][1].key?(line)
        result[hash][1][line] += 1
      else
        result[hash][1][line] = 1
      end
      numberOfFiles -= 1
  end

  collisions = 0
  uniqueFiles = 0

  result.each do |key, value|
    if value[0] > 1
      value[1].each do |k, v|
        collisions += (value[0] - v) * v
      end
      uniqueFiles += value[1].length
    else
      uniqueFiles += 1
    end
  end

  puts "#{uniqueFiles} #{collisions/2}"
end

def getHashValue file
  return file.each_byte.reduce(0) { |result, byte| result ^ byte }
end

calculateDuplicatedFiles
