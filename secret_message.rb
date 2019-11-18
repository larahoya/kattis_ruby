def solveSecretMessage()
  testCases = gets.chomp.to_i

  while testCases > 0
    line = gets.chomp
    n = Math.sqrt(line.length).ceil
    result = String.new("")
    (0..(n-1)).each do |j|
      (n-1).downto(0) do |i|
        position = (i*n) + j
        unless position >= line.length
          letter = line.slice(position)
          result.concat(letter)
        end
      end
    end

    testCases -= 1
    puts result
  end

end

solveSecretMessage