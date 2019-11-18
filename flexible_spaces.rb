def solveFlexibleSpaces
  values = gets.chomp.split(" ").map(&:to_i)
  total = values[0]
  partitions = values[1]

  locations = gets.chomp.split(" ").map(&:to_i)
  locations << total
  locations << 0
  
  options = Array.new
  locations.each do |a|
    locations.each do |b|
      unless a == b
        if a > b
          options << (a - b)
        else
          options << (b - a)
        end
      end
    end
  end

  string = String.new
  options.uniq.sort.each do |number|
    string.concat("#{number} ")
  end
  puts string
end

solveFlexibleSpaces
