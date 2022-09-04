
def handicapCalc (scores)
  tidyScores = arrayManipulator(scores)
  tidyScores.empty? 
    (puts "it looks like you need to add more scores before you can get a hcap. Good luck")
  avgScore = scoreAverage(tidyScores)
  puts avgScore
  return avgScore
end