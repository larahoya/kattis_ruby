def calculateCitiesVistedByAlice()
  testCases = gets.chomp.to_i

  while testCases > 0
    nrOfCities = gets.chomp.to_i
    cities = Array.new
    while nrOfCities > 0
      cities << gets.chomp
      nrOfCities -= 1
    end

    testCases -= 1
    puts cities.uniq.length
  end

end

calculateCitiesVistedByAlice